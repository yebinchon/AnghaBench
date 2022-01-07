
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* next; TYPE_2__* data; } ;
struct TYPE_9__ {TYPE_4__* children; int height; int width; } ;
struct TYPE_8__ {int widget; } ;
struct TYPE_7__ {int height; int width; } ;
typedef int GtkWidget ;
typedef TYPE_1__ GtkRequisition ;
typedef TYPE_2__ GtkFormChild ;
typedef TYPE_3__ GtkForm ;
typedef TYPE_4__ GList ;


 TYPE_3__* GTK_FORM (int *) ;
 int GTK_IS_FORM (int *) ;
 int g_return_if_fail (int ) ;
 int gtk_widget_size_request (int ,int *) ;

__attribute__((used)) static void
gtk_form_size_request(GtkWidget *widget, GtkRequisition *requisition)
{
    GList *tmp_list;
    GtkForm *form;

    g_return_if_fail(GTK_IS_FORM(widget));

    form = GTK_FORM(widget);

    requisition->width = form->width;
    requisition->height = form->height;

    tmp_list = form->children;

    while (tmp_list)
    {
 GtkFormChild *child = tmp_list->data;
 gtk_widget_size_request(child->widget, ((void*)0));
 tmp_list = tmp_list->next;
    }
}
