
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;


 TYPE_1__ gui ;
 int gui_mch_update () ;
 int input_available () ;
 int mch_char_avail () ;
 scalar_t__ no_console_input () ;

int
ui_char_avail()
{
    return mch_char_avail();



}
