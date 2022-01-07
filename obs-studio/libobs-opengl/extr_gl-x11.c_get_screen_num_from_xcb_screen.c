
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xcb_screen_t ;
struct TYPE_4__ {int * data; scalar_t__ rem; } ;
typedef TYPE_1__ xcb_screen_iterator_t ;
typedef int xcb_connection_t ;


 int xcb_get_setup (int *) ;
 int xcb_screen_next (TYPE_1__*) ;
 TYPE_1__ xcb_setup_roots_iterator (int ) ;

__attribute__((used)) static int get_screen_num_from_xcb_screen(xcb_connection_t *xcb_conn,
       xcb_screen_t *screen)
{
 xcb_screen_iterator_t iter =
  xcb_setup_roots_iterator(xcb_get_setup(xcb_conn));
 int screen_num = 0;

 for (; iter.rem; xcb_screen_next(&iter), ++screen_num)
  if (iter.data == screen)
   return screen_num;

 return -1;
}
