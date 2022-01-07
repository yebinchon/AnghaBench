
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int data; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* children; } ;
typedef TYPE_1__ GtkForm ;
typedef TYPE_2__ GList ;


 int FALSE ;
 int gtk_form_position_child (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
gtk_form_position_children(GtkForm *form)
{
    GList *tmp_list;

    for (tmp_list = form->children; tmp_list; tmp_list = tmp_list->next)
 gtk_form_position_child(form, tmp_list->data, FALSE);
}
