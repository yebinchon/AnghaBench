
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* gint ;
struct TYPE_10__ {TYPE_1__* data; struct TYPE_10__* next; } ;
struct TYPE_9__ {TYPE_3__* children; } ;
struct TYPE_8__ {void* y; void* x; int * widget; } ;
typedef int GtkWidget ;
typedef TYPE_1__ GtkFormChild ;
typedef TYPE_2__ GtkForm ;
typedef TYPE_3__ GList ;


 int GTK_IS_FORM (TYPE_2__*) ;
 int TRUE ;
 int g_return_if_fail (int ) ;
 int gtk_form_position_child (TYPE_2__*,TYPE_1__*,int ) ;

void
gtk_form_move(GtkForm *form,
       GtkWidget *child_widget,
       gint x,
       gint y)
{
    GList *tmp_list;
    GtkFormChild *child;

    g_return_if_fail(GTK_IS_FORM(form));

    for (tmp_list = form->children; tmp_list; tmp_list = tmp_list->next)
    {
 child = tmp_list->data;
 if (child->widget == child_widget)
 {
     child->x = x;
     child->y = y;

     gtk_form_position_child(form, child, TRUE);
     return;
 }
    }
}
