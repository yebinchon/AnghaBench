
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int height; int width; int y; int x; int window; int type; } ;
struct TYPE_5__ {int height; int width; int y; int x; } ;
struct TYPE_6__ {TYPE_1__ allocation; int window; } ;
typedef TYPE_2__ GtkWidget ;
typedef int GtkForm ;
typedef TYPE_3__ GdkEventConfigure ;
typedef int GdkEvent ;


 int GDK_CONFIGURE ;
 TYPE_2__* GTK_WIDGET (int *) ;
 int gtk_main_do_event (int *) ;

__attribute__((used)) static void
gtk_form_send_configure(GtkForm *form)
{
    GtkWidget *widget;
    GdkEventConfigure event;

    widget = GTK_WIDGET(form);

    event.type = GDK_CONFIGURE;
    event.window = widget->window;
    event.x = widget->allocation.x;
    event.y = widget->allocation.y;
    event.width = widget->allocation.width;
    event.height = widget->allocation.height;

    gtk_main_do_event((GdkEvent*)&event);
}
