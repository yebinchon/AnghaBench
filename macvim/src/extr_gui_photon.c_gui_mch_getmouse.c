
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int vimTextArea; } ;
struct TYPE_5__ {short x; short y; } ;
struct TYPE_6__ {TYPE_1__ pos; } ;
typedef TYPE_2__ PhCursorInfo_t ;


 int PhInputGroup (int *) ;
 int PhQueryCursor (int ,TYPE_2__*) ;
 int PtGetAbsPosition (int ,short*,short*) ;
 TYPE_3__ gui ;

void
gui_mch_getmouse(int *x, int *y)
{
    PhCursorInfo_t info;
    short ix, iy;



    PhQueryCursor(PhInputGroup(((void*)0)), &info);
    PtGetAbsPosition(gui.vimTextArea , &ix, &iy);

    *x = info.pos.x - ix;
    *y = info.pos.y - iy;
}
