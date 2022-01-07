
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int number; } ;
typedef TYPE_1__ xcb_xinerama_query_screens_reply_t ;
typedef int xcb_xinerama_query_screens_cookie_t ;
typedef int xcb_connection_t ;


 int free (TYPE_1__*) ;
 TYPE_1__* xcb_xinerama_query_screens_reply (int *,int ,int *) ;
 int xcb_xinerama_query_screens_unchecked (int *) ;

int xinerama_screen_count(xcb_connection_t *xcb)
{
 if (!xcb)
  return 0;

 int screens = 0;
 xcb_xinerama_query_screens_cookie_t scr_c;
 xcb_xinerama_query_screens_reply_t *scr_r;

 scr_c = xcb_xinerama_query_screens_unchecked(xcb);
 scr_r = xcb_xinerama_query_screens_reply(xcb, scr_c, ((void*)0));
 if (scr_r)
  screens = scr_r->number;
 free(scr_r);

 return screens;
}
