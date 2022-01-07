
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int report_keyboard_t ;


 int KBUF_SIZE ;
 int debug (char*) ;
 int * kbuf ;
 int kbuf_head ;
 int kbuf_tail ;
 int usbPoll () ;
 int vusb_transfer_keyboard () ;

__attribute__((used)) static void send_keyboard(report_keyboard_t *report) {
    uint8_t next = (kbuf_head + 1) % KBUF_SIZE;
    if (next != kbuf_tail) {
        kbuf[kbuf_head] = *report;
        kbuf_head = next;
    } else {
        debug("kbuf: full\n");
    }


    usbPoll();
    vusb_transfer_keyboard();
}
