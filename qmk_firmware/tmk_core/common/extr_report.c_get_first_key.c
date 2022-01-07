
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {int * bits; } ;
struct TYPE_6__ {scalar_t__* keys; TYPE_1__ nkro; } ;
typedef TYPE_2__ report_keyboard_t ;
struct TYPE_7__ {scalar_t__ nkro; } ;


 size_t KEYBOARD_REPORT_BITS ;
 size_t RO_INC (size_t) ;
 size_t biton (int ) ;
 size_t cb_head ;
 size_t cb_tail ;
 scalar_t__ keyboard_protocol ;
 TYPE_3__ keymap_config ;

uint8_t get_first_key(report_keyboard_t* keyboard_report) {
    return keyboard_report->keys[0];

}
