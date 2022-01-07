
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mods; int * keys; } ;
typedef TYPE_1__ report_keyboard_t ;


 int KEYBOARD_REPORT_KEYS ;
 int debug_keyboard ;
 int phex (int ) ;
 int print (char*) ;

void usb_keyboard_print_report(report_keyboard_t *report) {
    if (!debug_keyboard) return;
    print("keys: ");
    for (int i = 0; i < KEYBOARD_REPORT_KEYS; i++) {
        phex(report->keys[i]);
        print(" ");
    }
    print(" mods: ");
    phex(report->mods);
    print("\n");
}
