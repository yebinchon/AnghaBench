
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int (* unrealize ) (int *) ;} ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* data; } ;
struct TYPE_8__ {int * bin_window; TYPE_3__* children; } ;
struct TYPE_7__ {int * window; int widget; } ;
typedef int GtkWidget ;
typedef TYPE_1__ GtkFormChild ;
typedef TYPE_2__ GtkForm ;
typedef TYPE_3__ GList ;


 TYPE_2__* GTK_FORM (int *) ;
 int GTK_IS_FORM (int *) ;
 int GTK_OBJECT (int ) ;
 int GTK_SIGNAL_FUNC (int ) ;
 TYPE_5__* GTK_WIDGET_CLASS (int ) ;
 int g_return_if_fail (int ) ;
 int gdk_window_destroy (int *) ;
 int gdk_window_set_user_data (int *,int *) ;
 int gtk_form_child_map ;
 int gtk_form_child_unmap ;
 int gtk_signal_disconnect_by_func (int ,int ,TYPE_1__*) ;
 int parent_class ;
 int stub1 (int *) ;

__attribute__((used)) static void
gtk_form_unrealize(GtkWidget *widget)
{
    GList *tmp_list;
    GtkForm *form;

    g_return_if_fail(GTK_IS_FORM(widget));

    form = GTK_FORM(widget);

    tmp_list = form->children;

    gdk_window_set_user_data(form->bin_window, ((void*)0));
    gdk_window_destroy(form->bin_window);
    form->bin_window = ((void*)0);

    while (tmp_list)
    {
 GtkFormChild *child = tmp_list->data;

 if (child->window != ((void*)0))
 {
     gtk_signal_disconnect_by_func(GTK_OBJECT(child->widget),
       GTK_SIGNAL_FUNC(gtk_form_child_map),
       child);
     gtk_signal_disconnect_by_func(GTK_OBJECT(child->widget),
       GTK_SIGNAL_FUNC(gtk_form_child_unmap),
       child);

     gdk_window_set_user_data(child->window, ((void*)0));
     gdk_window_destroy(child->window);

     child->window = ((void*)0);
 }

 tmp_list = tmp_list->next;
    }

    if (GTK_WIDGET_CLASS (parent_class)->unrealize)
  (* GTK_WIDGET_CLASS (parent_class)->unrealize) (widget);
}
