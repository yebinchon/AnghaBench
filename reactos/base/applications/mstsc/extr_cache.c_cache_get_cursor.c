
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16 ;
typedef int * RD_HCURSOR ;


 size_t NUM_ELEMENTS (int **) ;
 int error (char*,size_t) ;
 int ** g_cursorcache ;

RD_HCURSOR
cache_get_cursor(uint16 cache_idx)
{
 RD_HCURSOR cursor;

 if (cache_idx < NUM_ELEMENTS(g_cursorcache))
 {
  cursor = g_cursorcache[cache_idx];
  if (cursor != ((void*)0))
   return cursor;
 }

 error("get cursor %d\n", cache_idx);
 return ((void*)0);
}
