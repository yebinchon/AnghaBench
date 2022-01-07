
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mi_destroy_cursor (void*) ;

void
ui_destroy_cursor(void * cursor)
{
  mi_destroy_cursor(cursor);
}
