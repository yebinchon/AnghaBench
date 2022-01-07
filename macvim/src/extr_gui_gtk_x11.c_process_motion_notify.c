
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int_u ;
typedef int guint32 ;
struct TYPE_6__ {TYPE_2__* drawarea; } ;
struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {TYPE_1__ allocation; } ;
typedef int GdkModifierType ;


 int FALSE ;
 int GDK_BUTTON1_MASK ;
 int GDK_BUTTON2_MASK ;
 int GDK_BUTTON3_MASK ;
 int GDK_BUTTON4_MASK ;
 int GDK_BUTTON5_MASK ;
 char MOUSE_DRAG ;
 scalar_t__ gtk_timeout_add (int ,int ,int *) ;
 TYPE_3__ gui ;
 int gui_mch_mousehide (int ) ;
 int gui_mouse_moved (int,int) ;
 int gui_send_mouse_event (int,int,int,int ,int ) ;
 int modifiers_gdk2mouse (int) ;
 scalar_t__ motion_repeat_timer ;
 int motion_repeat_timer_cb ;

__attribute__((used)) static void
process_motion_notify(int x, int y, GdkModifierType state)
{
    int button;
    int_u vim_modifiers;

    button = (state & (GDK_BUTTON1_MASK | GDK_BUTTON2_MASK |
         GDK_BUTTON3_MASK | GDK_BUTTON4_MASK |
         GDK_BUTTON5_MASK))
       ? MOUSE_DRAG : ' ';


    gui_mch_mousehide(FALSE);



    if (button != MOUSE_DRAG)
    {
 gui_mouse_moved(x, y);
 return;
    }


    vim_modifiers = modifiers_gdk2mouse(state);


    gui_send_mouse_event(button, x, y, FALSE, vim_modifiers);




    if (x < 0 || y < 0
     || x >= gui.drawarea->allocation.width
     || y >= gui.drawarea->allocation.height)
    {

 int dx;
 int dy;
 int offshoot;
 int delay = 10;




 dx = x < 0 ? -x : x - gui.drawarea->allocation.width;
 dy = y < 0 ? -y : y - gui.drawarea->allocation.height;

 offshoot = dx > dy ? dx : dy;
 if (offshoot > 127)
 {

     delay = 5;
 }
 else
 {
     delay = (130 * (127 - offshoot)) / 127 + 5;
 }


 if (!motion_repeat_timer)
     motion_repeat_timer = gtk_timeout_add((guint32)delay,
      motion_repeat_timer_cb, ((void*)0));
    }
}
