
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;
typedef int xcb_screen_t ;
typedef int xcb_connection_t ;


 int * get_screen_from_root (int *,int ) ;
 int get_screen_num_from_xcb_screen (int *,int *) ;

__attribute__((used)) static inline int get_screen_num_from_root(xcb_connection_t *xcb_conn,
        xcb_window_t root)
{
 xcb_screen_t *screen = get_screen_from_root(xcb_conn, root);

 if (!screen)
  return -1;

 return get_screen_num_from_xcb_screen(xcb_conn, screen);
}
