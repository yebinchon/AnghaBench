
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cursor_serial; scalar_t__ yhot; scalar_t__ xhot; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ xcb_xfixes_get_cursor_image_reply_t ;
struct TYPE_8__ {scalar_t__ last_serial; scalar_t__ y; scalar_t__ y_render; scalar_t__ x; scalar_t__ x_render; scalar_t__ y_org; scalar_t__ x_org; int tex; } ;
typedef TYPE_2__ xcb_xcursor_t ;


 int xcb_xcursor_create (TYPE_2__*,TYPE_1__*) ;

void xcb_xcursor_update(xcb_xcursor_t *data,
   xcb_xfixes_get_cursor_image_reply_t *xc)
{
 if (!data || !xc)
  return;

 if (!data->tex || data->last_serial != xc->cursor_serial)
  xcb_xcursor_create(data, xc);

 data->x = xc->x - data->x_org;
 data->y = xc->y - data->y_org;
 data->x_render = data->x - xc->xhot;
 data->y_render = data->y - xc->yhot;
}
