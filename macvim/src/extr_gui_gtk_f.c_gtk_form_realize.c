
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int gint ;
struct TYPE_28__ {TYPE_3__* data; struct TYPE_28__* next; } ;
struct TYPE_27__ {int event_mask; scalar_t__ y; scalar_t__ x; int colormap; int visual; int wclass; int height; int width; int window_type; } ;
struct TYPE_26__ {TYPE_6__* children; void* bin_window; } ;
struct TYPE_25__ {int widget; } ;
struct TYPE_23__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_24__ {void* window; int style; TYPE_1__ allocation; } ;
typedef TYPE_2__ GtkWidget ;
typedef TYPE_3__ GtkFormChild ;
typedef TYPE_4__ GtkForm ;
typedef TYPE_5__ GdkWindowAttr ;
typedef TYPE_6__ GList ;


 int GDK_INPUT_OUTPUT ;
 int GDK_VISIBILITY_NOTIFY_MASK ;
 int GDK_WA_COLORMAP ;
 int GDK_WA_VISUAL ;
 int GDK_WA_X ;
 int GDK_WA_Y ;
 int GDK_WINDOW_CHILD ;
 TYPE_4__* GTK_FORM (TYPE_2__*) ;
 int GTK_IS_FORM (TYPE_2__*) ;
 int GTK_REALIZED ;
 int GTK_STATE_NORMAL ;
 int GTK_WIDGET_SET_FLAGS (TYPE_4__*,int ) ;
 scalar_t__ GTK_WIDGET_VISIBLE (int ) ;
 int TRUE ;
 int g_return_if_fail (int ) ;
 int gdk_window_add_filter (void*,int ,TYPE_4__*) ;
 void* gdk_window_new (void*,TYPE_5__*,int) ;
 int gdk_window_set_user_data (void*,TYPE_2__*) ;
 int gtk_form_attach_child_window (TYPE_4__*,TYPE_3__*) ;
 int gtk_form_filter ;
 int gtk_form_main_filter ;
 int gtk_form_realize_child (TYPE_4__*,TYPE_3__*) ;
 int gtk_form_set_static_gravity (void*,int ) ;
 int gtk_style_attach (int ,void*) ;
 int gtk_style_set_background (int ,void*,int ) ;
 int gtk_widget_get_colormap (TYPE_2__*) ;
 int gtk_widget_get_events (TYPE_2__*) ;
 void* gtk_widget_get_parent_window (TYPE_2__*) ;
 int gtk_widget_get_visual (TYPE_2__*) ;

__attribute__((used)) static void
gtk_form_realize(GtkWidget *widget)
{
    GList *tmp_list;
    GtkForm *form;
    GdkWindowAttr attributes;
    gint attributes_mask;

    g_return_if_fail(GTK_IS_FORM(widget));

    form = GTK_FORM(widget);
    GTK_WIDGET_SET_FLAGS(form, GTK_REALIZED);

    attributes.window_type = GDK_WINDOW_CHILD;
    attributes.x = widget->allocation.x;
    attributes.y = widget->allocation.y;
    attributes.width = widget->allocation.width;
    attributes.height = widget->allocation.height;
    attributes.wclass = GDK_INPUT_OUTPUT;
    attributes.visual = gtk_widget_get_visual(widget);
    attributes.colormap = gtk_widget_get_colormap(widget);
    attributes.event_mask = GDK_VISIBILITY_NOTIFY_MASK;

    attributes_mask = GDK_WA_X | GDK_WA_Y | GDK_WA_VISUAL | GDK_WA_COLORMAP;

    widget->window = gdk_window_new(gtk_widget_get_parent_window(widget),
        &attributes, attributes_mask);
    gdk_window_set_user_data(widget->window, widget);

    attributes.x = 0;
    attributes.y = 0;
    attributes.event_mask = gtk_widget_get_events(widget);

    form->bin_window = gdk_window_new(widget->window,
          &attributes, attributes_mask);
    gdk_window_set_user_data(form->bin_window, widget);

    gtk_form_set_static_gravity(form->bin_window, TRUE);

    widget->style = gtk_style_attach(widget->style, widget->window);
    gtk_style_set_background(widget->style, widget->window, GTK_STATE_NORMAL);
    gtk_style_set_background(widget->style, form->bin_window, GTK_STATE_NORMAL);

    gdk_window_add_filter(widget->window, gtk_form_main_filter, form);
    gdk_window_add_filter(form->bin_window, gtk_form_filter, form);

    for (tmp_list = form->children; tmp_list; tmp_list = tmp_list->next)
    {
 GtkFormChild *child = tmp_list->data;

 gtk_form_attach_child_window(form, child);

 if (GTK_WIDGET_VISIBLE(child->widget))
     gtk_form_realize_child(form, child);
    }
}
