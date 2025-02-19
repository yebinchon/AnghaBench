
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int report_keyboard_t ;


 size_t KBUF_SIZE ;
 int VUSB_TRANSFER_KEYBOARD_MAX_TRIES ;
 int _delay_ms (int) ;
 scalar_t__ debug_keyboard ;
 int * kbuf ;
 size_t kbuf_head ;
 size_t kbuf_tail ;
 int pdec (size_t) ;
 int phex (size_t) ;
 int print (char*) ;
 scalar_t__ usbInterruptIsReady () ;
 int usbPoll () ;
 int usbSetInterrupt (void*,int) ;

void vusb_transfer_keyboard(void) {
    for (int i = 0; i < VUSB_TRANSFER_KEYBOARD_MAX_TRIES; i++) {
        if (usbInterruptIsReady()) {
            if (kbuf_head != kbuf_tail) {
                usbSetInterrupt((void *)&kbuf[kbuf_tail], sizeof(report_keyboard_t));
                kbuf_tail = (kbuf_tail + 1) % KBUF_SIZE;
                if (debug_keyboard) {
                    print("V-USB: kbuf[");
                    pdec(kbuf_tail);
                    print("->");
                    pdec(kbuf_head);
                    print("](");
                    phex((kbuf_head < kbuf_tail) ? (KBUF_SIZE - kbuf_tail + kbuf_head) : (kbuf_head - kbuf_tail));
                    print(")\n");
                }
            }
            break;
        }
        usbPoll();
        _delay_ms(1);
    }
}
