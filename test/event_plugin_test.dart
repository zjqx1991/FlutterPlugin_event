import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:event_plugin/event_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('event_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await EventPlugin.platformVersion, '42');
  });
}
