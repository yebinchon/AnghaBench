
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__* keys; } ;
typedef TYPE_1__ report_keyboard_t ;
typedef size_t int8_t ;


 size_t KEYBOARD_REPORT_KEYS ;
 size_t RO_INC (size_t) ;
 size_t RO_SUB (size_t,scalar_t__) ;
 scalar_t__ cb_count ;
 size_t cb_head ;
 size_t cb_tail ;

void add_key_byte(report_keyboard_t* keyboard_report, uint8_t code) {
    int8_t i = 0;
    int8_t empty = -1;
    for (; i < KEYBOARD_REPORT_KEYS; i++) {
        if (keyboard_report->keys[i] == code) {
            break;
        }
        if (empty == -1 && keyboard_report->keys[i] == 0) {
            empty = i;
        }
    }
    if (i == KEYBOARD_REPORT_KEYS) {
        if (empty != -1) {
            keyboard_report->keys[empty] = code;
        }
    }

}
