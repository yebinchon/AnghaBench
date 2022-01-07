
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int x; int y; } ;
struct TYPE_5__ {int x; int y; } ;
struct TYPE_7__ {TYPE_2__ ul; TYPE_1__ lr; } ;
typedef TYPE_3__ PhRect_t ;


 int PhInputGroup (int *) ;
 int PhWindowQueryVisible (int ,int ,int ,TYPE_3__*) ;
 int Ph_QUERY_WORKSPACE ;

void
gui_mch_get_screen_dimensions(int *screen_w, int *screen_h)
{
    PhRect_t console;

    PhWindowQueryVisible(Ph_QUERY_WORKSPACE, 0,
     PhInputGroup(((void*)0)), &console);

    *screen_w = console.lr.x - console.ul.x + 1;
    *screen_h = console.lr.y - console.ul.y + 1;
}
