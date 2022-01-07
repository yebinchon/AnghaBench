
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_generic_event_t ;
typedef int xcb_connection_t ;
struct TYPE_9__ {TYPE_2__* cur_swap; TYPE_1__* plat; } ;
typedef TYPE_4__ gs_device_t ;
typedef enum swap_type { ____Placeholder_swap_type } swap_type ;
typedef int XID ;
struct TYPE_8__ {int window; } ;
struct TYPE_7__ {TYPE_3__* wi; } ;
struct TYPE_6__ {int * display; } ;
typedef int Display ;


 scalar_t__ GLAD_GLX_EXT_swap_control ;
 scalar_t__ GLAD_GLX_MESA_swap_control ;
 scalar_t__ GLAD_GLX_SGI_swap_control ;




 int * XGetXCBConnection (int *) ;
 int free (int *) ;
 int glXSwapBuffers (int *,int ) ;
 int glXSwapIntervalEXT (int *,int ,int ) ;
 int glXSwapIntervalMESA (int ) ;
 int glXSwapIntervalSGI (int ) ;
 int * xcb_poll_for_event (int *) ;

extern void device_present(gs_device_t *device)
{
 static bool initialized = 0;
 static enum swap_type swap_type = 129;

 Display *display = device->plat->display;
 XID window = device->cur_swap->wi->window;

 if (!initialized) {
  if (GLAD_GLX_EXT_swap_control)
   swap_type = 131;
  else if (GLAD_GLX_MESA_swap_control)
   swap_type = 130;
  else if (GLAD_GLX_SGI_swap_control)
   swap_type = 128;

  initialized = 1;
 }

 xcb_connection_t *xcb_conn = XGetXCBConnection(display);
 xcb_generic_event_t *xcb_event;
 while ((xcb_event = xcb_poll_for_event(xcb_conn))) {

  free(xcb_event);
 }

 switch (swap_type) {
 case 131:
  glXSwapIntervalEXT(display, window, 0);
  break;
 case 130:
  glXSwapIntervalMESA(0);
  break;
 case 128:
  glXSwapIntervalSGI(0);
  break;
 case 129:;
 }

 glXSwapBuffers(display, window);
}
