
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int gint ;
struct TYPE_19__ {int height; int width; } ;
struct TYPE_24__ {TYPE_1__ requisition; } ;
struct TYPE_23__ {int event_mask; int colormap; int visual; int wclass; int height; int width; int y; int x; int window_type; } ;
struct TYPE_22__ {int * bin_window; } ;
struct TYPE_21__ {TYPE_6__* widget; int * window; int y; int x; } ;
struct TYPE_20__ {int style; } ;
typedef TYPE_2__ GtkWidget ;
typedef TYPE_3__ GtkFormChild ;
typedef TYPE_4__ GtkForm ;
typedef TYPE_5__ GdkWindowAttr ;


 int GDK_EXPOSURE_MASK ;
 int GDK_INPUT_OUTPUT ;
 int GDK_WA_COLORMAP ;
 int GDK_WA_VISUAL ;
 int GDK_WA_X ;
 int GDK_WA_Y ;
 int GDK_WINDOW_CHILD ;
 int GTK_OBJECT (TYPE_6__*) ;
 int GTK_SIGNAL_FUNC (int *) ;
 int GTK_STATE_NORMAL ;
 TYPE_2__* GTK_WIDGET (TYPE_4__*) ;
 scalar_t__ GTK_WIDGET_NO_WINDOW (TYPE_6__*) ;
 int GTK_WIDGET_REALIZED (TYPE_6__*) ;
 int TRUE ;
 int * gdk_window_new (int *,TYPE_5__*,int) ;
 int gdk_window_set_user_data (int *,TYPE_2__*) ;
 int gtk_form_child_map ;
 int gtk_form_child_unmap ;
 int gtk_form_set_static_gravity (int *,int ) ;
 int gtk_signal_connect (int ,char*,int ,TYPE_3__*) ;
 int gtk_style_set_background (int ,int *,int ) ;
 int gtk_widget_get_colormap (TYPE_2__*) ;
 int gtk_widget_get_visual (TYPE_2__*) ;
 int gtk_widget_set_parent_window (TYPE_6__*,int *) ;

__attribute__((used)) static void
gtk_form_attach_child_window(GtkForm *form, GtkFormChild *child)
{
    if (child->window != ((void*)0))
 return;

    if (GTK_WIDGET_NO_WINDOW(child->widget))
    {
 GtkWidget *widget;
 GdkWindowAttr attributes;
 gint attributes_mask;

 widget = GTK_WIDGET(form);

 attributes.window_type = GDK_WINDOW_CHILD;
 attributes.x = child->x;
 attributes.y = child->y;
 attributes.width = child->widget->requisition.width;
 attributes.height = child->widget->requisition.height;
 attributes.wclass = GDK_INPUT_OUTPUT;
 attributes.visual = gtk_widget_get_visual(widget);
 attributes.colormap = gtk_widget_get_colormap(widget);
 attributes.event_mask = GDK_EXPOSURE_MASK;

 attributes_mask = GDK_WA_X | GDK_WA_Y | GDK_WA_VISUAL | GDK_WA_COLORMAP;
 child->window = gdk_window_new(form->bin_window,
           &attributes, attributes_mask);
 gdk_window_set_user_data(child->window, widget);

 gtk_style_set_background(widget->style,
     child->window,
     GTK_STATE_NORMAL);

 gtk_widget_set_parent_window(child->widget, child->window);
 gtk_form_set_static_gravity(child->window, TRUE);




 gtk_signal_connect(GTK_OBJECT(child->widget), "map",
      GTK_SIGNAL_FUNC(&gtk_form_child_map), child);
 gtk_signal_connect(GTK_OBJECT(child->widget), "unmap",
      GTK_SIGNAL_FUNC(&gtk_form_child_unmap), child);
    }
    else if (!GTK_WIDGET_REALIZED(child->widget))
    {
 gtk_widget_set_parent_window(child->widget, form->bin_window);
    }
}
