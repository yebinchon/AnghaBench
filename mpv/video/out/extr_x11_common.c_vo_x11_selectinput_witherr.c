
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vo {int x11; } ;
struct TYPE_3__ {long all_event_masks; long your_event_mask; } ;
typedef TYPE_1__ XWindowAttributes ;
typedef int Window ;
typedef int Display ;


 long ButtonPressMask ;
 long ButtonReleaseMask ;
 int MP_ERR (int ,char*) ;
 long NoEventMask ;
 long PointerMotionMask ;
 scalar_t__ XGetWindowAttributes (int *,int ,TYPE_1__*) ;
 int XSelectInput (int *,int ,long) ;

__attribute__((used)) static void vo_x11_selectinput_witherr(struct vo *vo,
                                       Display *display,
                                       Window w,
                                       long event_mask)
{
    XSelectInput(display, w, NoEventMask);



    XSelectInput(display, w, event_mask);





    XWindowAttributes a;
    if (XGetWindowAttributes(display, w, &a)) {
        long bad = ButtonPressMask | ButtonReleaseMask | PointerMotionMask;
        if ((event_mask & bad) && (a.all_event_masks & bad) &&
            ((a.your_event_mask & bad) != (event_mask & bad)))
        {
            MP_ERR(vo->x11, "X11 error: error during XSelectInput "
                   "call, trying without mouse events\n");
            XSelectInput(display, w, event_mask & ~bad);
        }
    }
}
