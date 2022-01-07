
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ BOOT_NORMAL ;
 int NVIC_SystemReset () ;
 scalar_t__ enter_bootloader_mode ;

void jump_to_bootloader(void) {

  enter_bootloader_mode = 0;
  void (*bootloader)(void) = (void (*)(void)) (*((uint32_t *)0x1fff0004));


  bootloader();


  enter_bootloader_mode = BOOT_NORMAL;
  NVIC_SystemReset();
}
