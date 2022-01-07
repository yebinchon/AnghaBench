
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ BATTERY_VOLTAGE_LOW_LIMIT ;
 scalar_t__ BATTERY_VOLTAGE_LOW_RECOVERY ;
 scalar_t__ battery_voltage () ;

__attribute__((used)) static bool low_voltage(void) {
    static bool low = 0;
    uint16_t v = battery_voltage();
    if (v < BATTERY_VOLTAGE_LOW_LIMIT) {
        low = 1;
    } else if (v > BATTERY_VOLTAGE_LOW_RECOVERY) {
        low = 0;
    }
    return low;
}
