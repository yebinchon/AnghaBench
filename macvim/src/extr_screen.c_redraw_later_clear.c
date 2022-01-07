
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ in_use; } ;


 int CLEAR ;
 int HL_ALL ;
 int HL_BOLD ;
 int HL_INVERSE ;
 int HL_UNDERLINE ;
 TYPE_1__ gui ;
 int redraw_all_later (int ) ;
 int screen_attr ;

void
redraw_later_clear()
{
    redraw_all_later(CLEAR);
 screen_attr = HL_BOLD | HL_UNDERLINE | HL_INVERSE;
}
