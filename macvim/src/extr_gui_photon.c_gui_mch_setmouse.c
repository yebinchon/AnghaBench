
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vimTextArea; } ;


 int PhInputGroup (int *) ;
 int PhMoveCursorAbs (int ,short,short) ;
 int PtGetAbsPosition (int ,short*,short*) ;
 TYPE_1__ gui ;

void
gui_mch_setmouse(int x, int y)
{
    short abs_x, abs_y;

    PtGetAbsPosition(gui.vimTextArea, &abs_x, &abs_y);

    PhMoveCursorAbs(PhInputGroup(((void*)0)), abs_x + x, abs_y + y);
}
