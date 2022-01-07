
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ freeze_count; } ;
typedef TYPE_1__ GtkForm ;


 int GTK_IS_FORM (TYPE_1__*) ;
 int GTK_WIDGET (TYPE_1__*) ;
 int g_return_if_fail (int ) ;
 int gtk_form_position_children (TYPE_1__*) ;
 int gtk_widget_queue_draw (int ) ;

void
gtk_form_thaw(GtkForm *form)
{
    g_return_if_fail(GTK_IS_FORM(form));

    if (form->freeze_count)
    {
 if (!(--form->freeze_count))
 {
     gtk_form_position_children(form);
     gtk_widget_queue_draw(GTK_WIDGET(form));
 }
    }
}
