
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ visibility; TYPE_1__* drawarea; } ;
struct TYPE_9__ {int height; int width; int y; int x; } ;
struct TYPE_10__ {int count; TYPE_2__ area; } ;
struct TYPE_11__ {TYPE_3__ expose; } ;
struct TYPE_8__ {int window; } ;
typedef TYPE_4__ GdkEvent ;


 scalar_t__ GDK_VISIBILITY_PARTIAL ;
 int gdk_event_free (TYPE_4__*) ;
 TYPE_4__* gdk_event_get_graphics_expose (int ) ;
 TYPE_5__ gui ;
 int gui_can_update_cursor () ;
 int gui_dont_update_cursor () ;
 int gui_redraw (int ,int ,int ,int ) ;

__attribute__((used)) static void
check_copy_area(void)
{
    GdkEvent *event;
    int expose_count;

    if (gui.visibility != GDK_VISIBILITY_PARTIAL)
 return;





    gui_dont_update_cursor();

    do
    {

 event = gdk_event_get_graphics_expose(gui.drawarea->window);

 if (event == ((void*)0))
     break;

 gui_redraw(event->expose.area.x, event->expose.area.y,
     event->expose.area.width, event->expose.area.height);

 expose_count = event->expose.count;
 gdk_event_free(event);
    }
    while (expose_count > 0);

    gui_can_update_cursor();
}
