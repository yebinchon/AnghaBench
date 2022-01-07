
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {struct TYPE_13__* next; TYPE_1__* data; } ;
struct TYPE_12__ {TYPE_3__* children; } ;
struct TYPE_11__ {scalar_t__ window; int * widget; } ;
typedef int GtkWidget ;
typedef TYPE_1__ GtkFormChild ;
typedef TYPE_2__ GtkForm ;
typedef int GtkContainer ;
typedef TYPE_3__ GList ;


 TYPE_2__* GTK_FORM (int *) ;
 int GTK_IS_FORM (int *) ;
 int GTK_OBJECT (int *) ;
 int GTK_SIGNAL_FUNC (int *) ;
 int g_free (TYPE_1__*) ;
 int g_list_free_1 (TYPE_3__*) ;
 TYPE_3__* g_list_remove_link (TYPE_3__*,TYPE_3__*) ;
 int g_return_if_fail (int ) ;
 int gdk_window_destroy (scalar_t__) ;
 int gdk_window_set_user_data (scalar_t__,int *) ;
 int gtk_form_child_map ;
 int gtk_form_child_unmap ;
 int gtk_signal_disconnect_by_func (int ,int ,TYPE_1__*) ;
 int gtk_widget_unparent (int *) ;

__attribute__((used)) static void
gtk_form_remove(GtkContainer *container, GtkWidget *widget)
{
    GList *tmp_list;
    GtkForm *form;
    GtkFormChild *child = ((void*)0);

    g_return_if_fail(GTK_IS_FORM(container));

    form = GTK_FORM(container);

    tmp_list = form->children;
    while (tmp_list)
    {
 child = tmp_list->data;
 if (child->widget == widget)
     break;
 tmp_list = tmp_list->next;
    }

    if (tmp_list)
    {
 if (child->window)
 {
     gtk_signal_disconnect_by_func(GTK_OBJECT(child->widget),
       GTK_SIGNAL_FUNC(&gtk_form_child_map), child);
     gtk_signal_disconnect_by_func(GTK_OBJECT(child->widget),
       GTK_SIGNAL_FUNC(&gtk_form_child_unmap), child);




     gdk_window_set_user_data(child->window, ((void*)0));
     gdk_window_destroy(child->window);
 }
 gtk_widget_unparent(widget);

 form->children = g_list_remove_link(form->children, tmp_list);
 g_list_free_1(tmp_list);
 g_free(child);
    }
}
