
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int root; } ;
typedef TYPE_1__ xcb_screen_t ;
typedef int xcb_randr_get_screen_resources_reply_t ;
typedef int xcb_randr_get_screen_resources_cookie_t ;
struct TYPE_7__ {int x; int y; int width; int height; } ;
typedef TYPE_2__ xcb_randr_get_crtc_info_reply_t ;
typedef int xcb_randr_get_crtc_info_cookie_t ;
typedef int xcb_randr_crtc_t ;
typedef int xcb_connection_t ;
typedef int int_fast32_t ;
struct TYPE_8__ {TYPE_1__* data; } ;


 int xcb_get_setup (int *) ;
 int xcb_randr_get_crtc_info (int *,int ,int ) ;
 TYPE_2__* xcb_randr_get_crtc_info_reply (int *,int ,int ) ;
 int xcb_randr_get_screen_resources (int *,int ) ;
 int * xcb_randr_get_screen_resources_crtcs (int *) ;
 int xcb_randr_get_screen_resources_crtcs_length (int *) ;
 int * xcb_randr_get_screen_resources_reply (int *,int ,int ) ;
 TYPE_3__ xcb_setup_roots_iterator (int ) ;

int randr_screen_geo(xcb_connection_t *xcb, int_fast32_t screen,
       int_fast32_t *x, int_fast32_t *y, int_fast32_t *w,
       int_fast32_t *h, xcb_screen_t **rscreen)
{
 xcb_screen_t *xscreen;
 xscreen = xcb_setup_roots_iterator(xcb_get_setup(xcb)).data;

 xcb_randr_get_screen_resources_cookie_t res_c;
 xcb_randr_get_screen_resources_reply_t *res_r;

 res_c = xcb_randr_get_screen_resources(xcb, xscreen->root);
 res_r = xcb_randr_get_screen_resources_reply(xcb, res_c, 0);
 if (!res_r)
  goto fail;

 int screens = xcb_randr_get_screen_resources_crtcs_length(res_r);
 if (screen < 0 || screen >= screens)
  goto fail;

 xcb_randr_crtc_t *crtc = xcb_randr_get_screen_resources_crtcs(res_r);

 xcb_randr_get_crtc_info_cookie_t crtc_c;
 xcb_randr_get_crtc_info_reply_t *crtc_r;

 crtc_c = xcb_randr_get_crtc_info(xcb, *(crtc + screen), 0);
 crtc_r = xcb_randr_get_crtc_info_reply(xcb, crtc_c, 0);
 if (!crtc_r)
  goto fail;

 *x = crtc_r->x;
 *y = crtc_r->y;
 *w = crtc_r->width;
 *h = crtc_r->height;

 if (rscreen)
  *rscreen = xscreen;

 return 0;

fail:
 *x = *y = *w = *h = 0;
 return -1;
}
