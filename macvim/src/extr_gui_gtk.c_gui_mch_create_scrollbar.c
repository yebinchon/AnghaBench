
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ident; int handler_id; int * id; } ;
typedef TYPE_1__ scrollbar_T ;
struct TYPE_5__ {int formwin; } ;
typedef int GtkAdjustment ;


 int GINT_TO_POINTER (int ) ;
 int GTK_CAN_FOCUS ;
 int GTK_FORM (int ) ;
 int GTK_OBJECT (int *) ;
 int GTK_RANGE (int *) ;
 int GTK_SIGNAL_FUNC (int ) ;
 int GTK_WIDGET_UNSET_FLAGS (int *,int ) ;
 int SBAR_HORIZ ;
 int SBAR_VERT ;
 int adjustment_value_changed ;
 int gtk_form_put (int ,int *,int ,int ) ;
 int * gtk_hscrollbar_new (int *) ;
 int * gtk_range_get_adjustment (int ) ;
 int gtk_signal_connect (int ,char*,int ,int ) ;
 int * gtk_vscrollbar_new (int *) ;
 TYPE_3__ gui ;
 int gui_mch_update () ;

void
gui_mch_create_scrollbar(scrollbar_T *sb, int orient)
{
    if (orient == SBAR_HORIZ)
 sb->id = gtk_hscrollbar_new(((void*)0));
    else if (orient == SBAR_VERT)
 sb->id = gtk_vscrollbar_new(((void*)0));

    if (sb->id != ((void*)0))
    {
 GtkAdjustment *adjustment;

 GTK_WIDGET_UNSET_FLAGS(sb->id, GTK_CAN_FOCUS);
 gtk_form_put(GTK_FORM(gui.formwin), sb->id, 0, 0);

 adjustment = gtk_range_get_adjustment(GTK_RANGE(sb->id));

 sb->handler_id = gtk_signal_connect(
        GTK_OBJECT(adjustment), "value_changed",
        GTK_SIGNAL_FUNC(adjustment_value_changed),
        GINT_TO_POINTER(sb->ident));
 gui_mch_update();
    }
}
