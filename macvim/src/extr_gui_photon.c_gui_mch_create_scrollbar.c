
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* id; TYPE_1__* wp; } ;
typedef TYPE_2__ scrollbar_T ;
struct TYPE_8__ {int vimContainer; int vimPanelGroup; } ;
struct TYPE_6__ {TYPE_2__* w_scrollbars; } ;
typedef int PtArg_t ;


 int PtAddCallback (void*,int ,int ,TYPE_2__*) ;
 void* PtCreateWidget (int ,int ,int,int *) ;
 int PtScrollbar ;
 int PtSetArg (int *,int ,int,int) ;
 int Pt_ARG_ANCHOR_FLAGS ;
 int Pt_ARG_FLAGS ;
 int Pt_ARG_ORIENTATION ;
 int Pt_ARG_SCROLLBAR_FLAGS ;
 int Pt_BOTTOM_ANCHORED_BOTTOM ;
 int Pt_CB_SCROLLBAR_MOVE ;
 int Pt_DELAY_REALIZE ;
 int Pt_GETS_FOCUS ;
 int Pt_HORIZONTAL ;
 int Pt_IS_ANCHORED ;
 int Pt_LEFT_ANCHORED_LEFT ;
 int Pt_RIGHT_ANCHORED_RIGHT ;
 int Pt_SCROLLBAR_SHOW_ARROWS ;
 int Pt_TOP_ANCHORED_TOP ;
 int Pt_VERTICAL ;
 int SBAR_HORIZ ;
 size_t SBAR_LEFT ;
 int anchor_flags ;
 TYPE_4__ gui ;
 int gui_ph_handle_scrollbar ;

void
gui_mch_create_scrollbar(scrollbar_T *sb, int orient)
{
    int n = 0;

    PtArg_t args[4];







    PtSetArg(&args[ n++ ], Pt_ARG_FLAGS, Pt_DELAY_REALIZE,
     Pt_DELAY_REALIZE | Pt_GETS_FOCUS);
    PtSetArg(&args[ n++ ], Pt_ARG_SCROLLBAR_FLAGS, Pt_SCROLLBAR_SHOW_ARROWS, 0);
    PtSetArg(&args[ n++ ], Pt_ARG_ORIENTATION,
     (orient == SBAR_HORIZ) ? Pt_HORIZONTAL : Pt_VERTICAL, 0);



    sb->id = PtCreateWidget(PtScrollbar, gui.vimContainer, n, args);


    PtAddCallback(sb->id, Pt_CB_SCROLLBAR_MOVE, gui_ph_handle_scrollbar, sb);
}
