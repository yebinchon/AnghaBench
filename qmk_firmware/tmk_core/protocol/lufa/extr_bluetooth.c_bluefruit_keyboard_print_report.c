
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reserved; int mods; int * keys; } ;
typedef TYPE_1__ report_keyboard_t ;


 int KEYBOARD_REPORT_KEYS ;
 int debug_hex8 (int ) ;
 int debug_keyboard ;
 int dprintf (char*) ;

void bluefruit_keyboard_print_report(report_keyboard_t *report) {
    if (!debug_keyboard) return;
    dprintf("keys: ");
    for (int i = 0; i < KEYBOARD_REPORT_KEYS; i++) {
        debug_hex8(report->keys[i]);
        dprintf(" ");
    }
    dprintf(" mods: ");
    debug_hex8(report->mods);
    dprintf(" reserved: ");
    debug_hex8(report->reserved);
    dprintf("\n");
}
