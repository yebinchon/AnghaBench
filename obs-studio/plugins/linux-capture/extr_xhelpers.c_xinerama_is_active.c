
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_1__ xcb_xinerama_is_active_reply_t ;
typedef int xcb_xinerama_is_active_cookie_t ;
typedef int xcb_connection_t ;
struct TYPE_6__ {int present; } ;


 int free (TYPE_1__*) ;
 TYPE_3__* xcb_get_extension_data (int *,int *) ;
 int xcb_xinerama_id ;
 TYPE_1__* xcb_xinerama_is_active_reply (int *,int ,int *) ;
 int xcb_xinerama_is_active_unchecked (int *) ;

bool xinerama_is_active(xcb_connection_t *xcb)
{
 if (!xcb || !xcb_get_extension_data(xcb, &xcb_xinerama_id)->present)
  return 0;

 bool active = 1;
 xcb_xinerama_is_active_cookie_t xnr_c;
 xcb_xinerama_is_active_reply_t *xnr_r;

 xnr_c = xcb_xinerama_is_active_unchecked(xcb);
 xnr_r = xcb_xinerama_is_active_reply(xcb, xnr_c, ((void*)0));
 if (!xnr_r || xnr_r->state == 0)
  active = 0;
 free(xnr_r);

 return active;
}
