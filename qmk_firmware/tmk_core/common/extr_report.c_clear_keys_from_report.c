
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bits; } ;
struct TYPE_6__ {int keys; TYPE_1__ nkro; } ;
typedef TYPE_2__ report_keyboard_t ;
struct TYPE_7__ {scalar_t__ nkro; } ;


 scalar_t__ keyboard_protocol ;
 TYPE_3__ keymap_config ;
 int memset (int ,int ,int) ;

void clear_keys_from_report(report_keyboard_t* keyboard_report) {







    memset(keyboard_report->keys, 0, sizeof(keyboard_report->keys));
}
