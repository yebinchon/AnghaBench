
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BATTERY_PIN ;
 float MAX_VOLTAGE ;
 float MIN_VOLTAGE ;
 int analogRead (int ) ;

uint8_t battery_level(void) {
    float voltage = analogRead(BATTERY_PIN) * 2 * 3.3 / 1024;
    if (voltage < MIN_VOLTAGE) return 0;
    if (voltage > MAX_VOLTAGE) return 255;
    return (voltage - MIN_VOLTAGE) / (MAX_VOLTAGE - MIN_VOLTAGE) * 255;
}
