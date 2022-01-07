
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int report_keyboard_t ;
struct TYPE_2__ {scalar_t__ nkro; } ;


 int add_key_bit (int *,int ) ;
 int add_key_byte (int *,int ) ;
 scalar_t__ keyboard_protocol ;
 TYPE_1__ keymap_config ;

void add_key_to_report(report_keyboard_t* keyboard_report, uint8_t key) {






    add_key_byte(keyboard_report, key);
}
