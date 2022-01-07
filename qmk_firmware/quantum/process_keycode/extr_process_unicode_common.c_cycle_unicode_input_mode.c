
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {int input_mode; } ;


 int dprintf (char*,int ) ;
 int persist_unicode_input_mode () ;
 int * selected ;
 size_t selected_count ;
 size_t selected_index ;
 TYPE_1__ unicode_config ;

void cycle_unicode_input_mode(uint8_t offset) {

    selected_index = (selected_index + offset) % selected_count;
    unicode_config.input_mode = selected[selected_index];



    dprintf("Unicode input mode cycle to: %u\n", unicode_config.input_mode);

}
