
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16 ;
typedef int * RD_HCURSOR ;


 size_t NUM_ELEMENTS (int **) ;
 int error (char*,size_t) ;
 int ** g_cursorcache ;
 int ui_destroy_cursor (int *) ;

void
cache_put_cursor(uint16 cache_idx, RD_HCURSOR cursor)
{
 RD_HCURSOR old;

 if (cache_idx < NUM_ELEMENTS(g_cursorcache))
 {
  old = g_cursorcache[cache_idx];
  if (old != ((void*)0))
   ui_destroy_cursor(old);

  g_cursorcache[cache_idx] = cursor;
 }
 else
 {
  error("put cursor %d\n", cache_idx);
 }
}
