
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_3__ {int root; } ;
typedef TYPE_1__ xcb_screen_t ;
typedef int xcb_connection_t ;
typedef int obs_hotkeys_platform_t ;


 TYPE_1__* default_screen (int *,int *) ;

__attribute__((used)) static inline xcb_window_t root_window(obs_hotkeys_platform_t *context,
           xcb_connection_t *connection)
{
 xcb_screen_t *screen = default_screen(context, connection);
 if (screen)
  return screen->root;
 return 0;
}
