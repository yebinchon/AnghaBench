
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; scalar_t__ rem; } ;
typedef TYPE_2__ xcb_screen_iterator_t ;
typedef int xcb_connection_t ;
typedef int int_fast32_t ;
struct TYPE_5__ {int height_in_pixels; int width_in_pixels; } ;


 int xcb_get_setup (int *) ;
 int xcb_screen_next (TYPE_2__*) ;
 TYPE_2__ xcb_setup_roots_iterator (int ) ;

int x11_screen_geo(xcb_connection_t *xcb, int_fast32_t screen, int_fast32_t *w,
     int_fast32_t *h)
{
 if (!xcb)
  goto fail;

 bool success = 0;
 xcb_screen_iterator_t iter;

 iter = xcb_setup_roots_iterator(xcb_get_setup(xcb));
 for (; iter.rem; --screen, xcb_screen_next(&iter)) {
  if (!screen) {
   *w = iter.data->width_in_pixels;
   *h = iter.data->height_in_pixels;
   success = 1;
  }
 }

 if (success)
  return 0;

fail:
 *w = *h = 0;
 return -1;
}
