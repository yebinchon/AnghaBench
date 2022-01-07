
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int uint32_t ;
struct TYPE_11__ {TYPE_4__* cur_swap; TYPE_1__* plat; } ;
typedef TYPE_5__ gs_device_t ;
struct TYPE_9__ {int cy; int cx; } ;
struct TYPE_10__ {TYPE_3__ info; TYPE_2__* wi; } ;
struct TYPE_8__ {int window; } ;
struct TYPE_7__ {int * display; } ;
typedef int Display ;


 int XCB_CONFIG_WINDOW_HEIGHT ;
 int XCB_CONFIG_WINDOW_WIDTH ;
 int XGetXCBConnection (int *) ;
 int xcb_configure_window (int ,int ,int,int *) ;

extern void gl_update(gs_device_t *device)
{
 Display *display = device->plat->display;
 xcb_window_t window = device->cur_swap->wi->window;

 uint32_t values[] = {device->cur_swap->info.cx,
        device->cur_swap->info.cy};

 xcb_configure_window(XGetXCBConnection(display), window,
        XCB_CONFIG_WINDOW_WIDTH | XCB_CONFIG_WINDOW_HEIGHT,
        values);
}
