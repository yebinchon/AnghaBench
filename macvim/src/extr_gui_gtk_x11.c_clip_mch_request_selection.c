
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int guint32 ;
struct TYPE_8__ {int gtk_sel_atom; } ;
typedef TYPE_2__ VimClipboard ;
struct TYPE_10__ {TYPE_1__* mainwin; int drawarea; } ;
struct TYPE_9__ {scalar_t__ info; int target; } ;
struct TYPE_7__ {int window; } ;
typedef int GdkAtom ;


 int FALSE ;
 scalar_t__ GDK_CURRENT_TIME ;
 int GDK_WINDOW_XDISPLAY (int ) ;
 unsigned int N_SELECTION_TARGETS ;
 scalar_t__ RS_FAIL ;
 scalar_t__ RS_NONE ;
 scalar_t__ TARGET_HTML ;
 int TRUE ;
 int clip_html ;
 int g_main_context_iteration (int *,int ) ;
 int gdk_atom_intern (int ,int ) ;
 int gtk_selection_convert (int ,int ,int ,int ) ;
 TYPE_5__ gui ;
 scalar_t__ received_selection ;
 TYPE_4__* selection_targets ;
 scalar_t__ time (int *) ;
 int yank_cut_buffer0 (int ,TYPE_2__*) ;

void
clip_mch_request_selection(VimClipboard *cbd)
{
    GdkAtom target;
    unsigned i;
    time_t start;

    for (i = 0; i < N_SELECTION_TARGETS; ++i)
    {
 if (!clip_html && selection_targets[i].info == TARGET_HTML)
     continue;
 received_selection = RS_NONE;
 target = gdk_atom_intern(selection_targets[i].target, FALSE);

 gtk_selection_convert(gui.drawarea,
         cbd->gtk_sel_atom, target,
         (guint32)GDK_CURRENT_TIME);




 start = time(((void*)0));
 while (received_selection == RS_NONE && time(((void*)0)) < start + 3)
     g_main_context_iteration(((void*)0), TRUE);

 if (received_selection != RS_FAIL)
     return;
    }


    yank_cut_buffer0(GDK_WINDOW_XDISPLAY(gui.mainwin->window), cbd);
}
