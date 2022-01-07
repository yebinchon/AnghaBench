
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* gint ;
struct TYPE_5__ {void* height; void* width; } ;
struct TYPE_6__ {TYPE_1__ requisition; } ;
typedef TYPE_2__ GtkWidget ;
typedef int GtkForm ;


 int gtk_form_move (int *,TYPE_2__*,void*,void*) ;

void
gtk_form_move_resize(GtkForm *form, GtkWidget *widget,
       gint x, gint y, gint w, gint h)
{
    widget->requisition.width = w;
    widget->requisition.height = h;

    gtk_form_move(form, widget, x, y);
}
