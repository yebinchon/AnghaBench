
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR; int SR; } ;
struct TYPE_3__ {int (* set_led ) (int ,int) ;} ;


 TYPE_2__* FLASH ;
 int FLASH_CR_PG ;
 int FLASH_CR_PSIZE_1 ;
 int FLASH_SR_BSY ;
 int LED_RED ;
 int UNUSED (int) ;
 TYPE_1__* current_board ;
 int * prog_ptr ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

void usb_cb_ep2_out(void *usbdata, int len, bool hardwired) {
  UNUSED(hardwired);
  current_board->set_led(LED_RED, 0);
  for (int i = 0; i < len/4; i++) {

    FLASH->CR = FLASH_CR_PSIZE_1 | FLASH_CR_PG;

    *prog_ptr = *(uint32_t*)(usbdata+(i*4));
    while (FLASH->SR & FLASH_SR_BSY);


    prog_ptr++;
  }
  current_board->set_led(LED_RED, 1);
}
