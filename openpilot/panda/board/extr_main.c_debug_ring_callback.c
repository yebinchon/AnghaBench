
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uart_ring ;
struct TYPE_2__ {int (* set_usb_power_mode ) (int ) ;} ;


 int ENTER_BOOTLOADER_MAGIC ;
 int NVIC_SystemReset () ;
 int USB_POWER_CDP ;
 int USB_POWER_CLIENT ;
 int USB_POWER_DCP ;
 TYPE_1__* current_board ;
 int enter_bootloader_mode ;
 scalar_t__ getc (int *,char*) ;
 int putc (int *,char) ;
 int puts (char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

void debug_ring_callback(uart_ring *ring) {
  char rcv;
  while (getc(ring, &rcv)) {
    (void)putc(ring, rcv);


    if (rcv == 'z') {
      enter_bootloader_mode = ENTER_BOOTLOADER_MAGIC;
      NVIC_SystemReset();
    }


    if (rcv == 'x') {
      NVIC_SystemReset();
    }


    if (rcv == 'C') {
      puts("switching USB to CDP mode\n");
      current_board->set_usb_power_mode(USB_POWER_CDP);
    }
    if (rcv == 'c') {
      puts("switching USB to client mode\n");
      current_board->set_usb_power_mode(USB_POWER_CLIENT);
    }
    if (rcv == 'D') {
      puts("switching USB to DCP mode\n");
      current_board->set_usb_power_mode(USB_POWER_DCP);
    }
  }
}
