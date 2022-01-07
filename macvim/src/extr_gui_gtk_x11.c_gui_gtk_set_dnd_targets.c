
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int drawarea; } ;
struct TYPE_5__ {scalar_t__ info; } ;
typedef TYPE_1__ GtkTargetEntry ;


 int GDK_ACTION_COPY ;
 int GDK_ACTION_MOVE ;
 int GTK_DEST_DEFAULT_ALL ;
 int N_DND_TARGETS ;
 scalar_t__ TARGET_HTML ;
 int clip_html ;
 TYPE_1__* dnd_targets ;
 int gtk_drag_dest_set (int ,int ,TYPE_1__*,int,int) ;
 int gtk_drag_dest_unset (int ) ;
 TYPE_2__ gui ;

void
gui_gtk_set_dnd_targets(void)
{
    int i, j = 0;
    int n_targets = N_DND_TARGETS;
    GtkTargetEntry targets[N_DND_TARGETS];

    for (i = 0; i < (int)N_DND_TARGETS; ++i)
    {
 if (!clip_html && dnd_targets[i].info == TARGET_HTML)
     n_targets--;
 else
     targets[j++] = dnd_targets[i];
    }

    gtk_drag_dest_unset(gui.drawarea);
    gtk_drag_dest_set(gui.drawarea,
        GTK_DEST_DEFAULT_ALL,
        targets, n_targets,
        GDK_ACTION_COPY | GDK_ACTION_MOVE);
}
