
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_screen_t ;
struct TYPE_6__ {int * data; scalar_t__ rem; } ;
typedef TYPE_1__ xcb_screen_iterator_t ;
typedef int xcb_connection_t ;
struct TYPE_7__ {int display; } ;
typedef TYPE_2__ obs_hotkeys_platform_t ;


 int XDefaultScreen (int ) ;
 int xcb_get_setup (int *) ;
 int xcb_screen_next (TYPE_1__*) ;
 TYPE_1__ xcb_setup_roots_iterator (int ) ;

__attribute__((used)) static xcb_screen_t *default_screen(obs_hotkeys_platform_t *context,
        xcb_connection_t *connection)
{
 int def_screen_idx = XDefaultScreen(context->display);
 xcb_screen_iterator_t iter;

 iter = xcb_setup_roots_iterator(xcb_get_setup(connection));
 while (iter.rem) {
  if (def_screen_idx-- == 0)
   return iter.data;

  xcb_screen_next(&iter);
 }

 return ((void*)0);
}
