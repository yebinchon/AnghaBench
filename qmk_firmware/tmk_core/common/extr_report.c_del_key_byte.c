
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {size_t* keys; } ;
typedef TYPE_1__ report_keyboard_t ;


 size_t KEYBOARD_REPORT_KEYS ;
 size_t RO_DEC (size_t) ;
 size_t RO_INC (size_t) ;
 scalar_t__ cb_count ;
 size_t cb_head ;
 size_t cb_tail ;

void del_key_byte(report_keyboard_t* keyboard_report, uint8_t code) {
    for (uint8_t i = 0; i < KEYBOARD_REPORT_KEYS; i++) {
        if (keyboard_report->keys[i] == code) {
            keyboard_report->keys[i] = 0;
        }
    }

}
