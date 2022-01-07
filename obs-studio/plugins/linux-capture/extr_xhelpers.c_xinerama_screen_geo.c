
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; scalar_t__ rem; } ;
typedef TYPE_2__ xcb_xinerama_screen_info_iterator_t ;
typedef int xcb_xinerama_query_screens_reply_t ;
typedef int xcb_xinerama_query_screens_cookie_t ;
typedef int xcb_connection_t ;
typedef int int_fast32_t ;
struct TYPE_5__ {int height; int width; int y_org; int x_org; } ;


 int free (int *) ;
 int * xcb_xinerama_query_screens_reply (int *,int ,int *) ;
 TYPE_2__ xcb_xinerama_query_screens_screen_info_iterator (int *) ;
 int xcb_xinerama_query_screens_unchecked (int *) ;
 int xcb_xinerama_screen_info_next (TYPE_2__*) ;

int xinerama_screen_geo(xcb_connection_t *xcb, int_fast32_t screen,
   int_fast32_t *x, int_fast32_t *y, int_fast32_t *w,
   int_fast32_t *h)
{
 if (!xcb)
  goto fail;

 bool success = 0;
 xcb_xinerama_query_screens_cookie_t scr_c;
 xcb_xinerama_query_screens_reply_t *scr_r;
 xcb_xinerama_screen_info_iterator_t iter;

 scr_c = xcb_xinerama_query_screens_unchecked(xcb);
 scr_r = xcb_xinerama_query_screens_reply(xcb, scr_c, ((void*)0));
 if (!scr_r)
  goto fail;

 iter = xcb_xinerama_query_screens_screen_info_iterator(scr_r);
 for (; iter.rem; --screen, xcb_xinerama_screen_info_next(&iter)) {
  if (!screen) {
   *x = iter.data->x_org;
   *y = iter.data->y_org;
   *w = iter.data->width;
   *h = iter.data->height;
   success = 1;
  }
 }
 free(scr_r);

 if (success)
  return 0;

fail:
 *x = *y = *w = *h = 0;
 return -1;
}
