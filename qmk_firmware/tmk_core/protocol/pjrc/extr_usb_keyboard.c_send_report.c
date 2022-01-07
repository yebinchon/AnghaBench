
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int * raw; } ;
typedef TYPE_1__ report_keyboard_t ;
typedef int int8_t ;


 int RWAL ;
 scalar_t__ SREG ;
 scalar_t__ UDFNUML ;
 int UEDATX ;
 int UEINTX ;
 scalar_t__ UENUM ;
 int cli () ;
 int usb_configured () ;

__attribute__((used)) static inline int8_t send_report(report_keyboard_t *report, uint8_t endpoint, uint8_t keys_start, uint8_t keys_end) {
    uint8_t intr_state, timeout;

    if (!usb_configured()) return -1;
    intr_state = SREG;
    cli();
    UENUM = endpoint;
    timeout = UDFNUML + 50;
    while (1) {

        if (UEINTX & (1 << RWAL)) break;
        SREG = intr_state;

        if (!usb_configured()) return -1;

        if (UDFNUML == timeout) return -1;

        intr_state = SREG;
        cli();
        UENUM = endpoint;
    }
    for (uint8_t i = keys_start; i < keys_end; i++) {
        UEDATX = report->raw[i];
    }
    UEINTX = 0x3A;
    SREG = intr_state;
    return 0;
}
