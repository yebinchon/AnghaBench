
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ gint ;
typedef void* gboolean ;
struct TYPE_17__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_14__ {int height; int width; } ;
struct TYPE_16__ {TYPE_1__ requisition; } ;
struct TYPE_15__ {scalar_t__ x; scalar_t__ y; TYPE_3__* widget; void* mapped; scalar_t__ window; } ;
typedef TYPE_2__ GtkFormChild ;
typedef TYPE_3__ GtkForm ;
typedef TYPE_4__ GtkAllocation ;


 void* FALSE ;
 scalar_t__ GTK_WIDGET_MAPPED (TYPE_3__*) ;
 scalar_t__ GTK_WIDGET_NO_WINDOW (TYPE_3__*) ;
 scalar_t__ GTK_WIDGET_VISIBLE (TYPE_3__*) ;
 scalar_t__ G_MAXSHORT ;
 scalar_t__ G_MINSHORT ;
 void* TRUE ;
 int gdk_window_move_resize (scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int gtk_widget_map (TYPE_3__*) ;
 int gtk_widget_size_allocate (TYPE_3__*,TYPE_4__*) ;
 int gtk_widget_unmap (TYPE_3__*) ;

__attribute__((used)) static void
gtk_form_position_child(GtkForm *form, GtkFormChild *child,
   gboolean force_allocate)
{
    gint x;
    gint y;

    x = child->x;
    y = child->y;

    if ((x >= G_MINSHORT) && (x <= G_MAXSHORT) &&
 (y >= G_MINSHORT) && (y <= G_MAXSHORT))
    {
 if (!child->mapped)
 {
     if (GTK_WIDGET_MAPPED(form) && GTK_WIDGET_VISIBLE(child->widget))
     {
  if (!GTK_WIDGET_MAPPED(child->widget))
      gtk_widget_map(child->widget);

  child->mapped = TRUE;
  force_allocate = TRUE;
     }
 }

 if (force_allocate)
 {
     GtkAllocation allocation;

     if (GTK_WIDGET_NO_WINDOW(child->widget))
     {
  if (child->window)
  {
      gdk_window_move_resize(child->window,
       x, y,
       child->widget->requisition.width,
       child->widget->requisition.height);
  }

  allocation.x = 0;
  allocation.y = 0;
     }
     else
     {
  allocation.x = x;
  allocation.y = y;
     }

     allocation.width = child->widget->requisition.width;
     allocation.height = child->widget->requisition.height;

     gtk_widget_size_allocate(child->widget, &allocation);
 }
    }
    else
    {
 if (child->mapped)
 {
     child->mapped = FALSE;

     if (GTK_WIDGET_MAPPED(child->widget))
  gtk_widget_unmap(child->widget);
 }
    }
}
