
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ MAP_GPIOPinRead (int ,int ) ;
 int MICROPY_SAFE_BOOT_PORT ;
 int MICROPY_SAFE_BOOT_PORT_PIN ;
 int UTILS_DELAY_US_TO_COUNT (int) ;
 int UtilsDelay (int ) ;

__attribute__((used)) static bool safe_boot_request_start (uint32_t wait_time) {
    if (MAP_GPIOPinRead(MICROPY_SAFE_BOOT_PORT, MICROPY_SAFE_BOOT_PORT_PIN)) {
        UtilsDelay(UTILS_DELAY_US_TO_COUNT(wait_time * 1000));
    }
    return MAP_GPIOPinRead(MICROPY_SAFE_BOOT_PORT, MICROPY_SAFE_BOOT_PORT_PIN) ? 1 : 0;
}
