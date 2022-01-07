
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8 ;
typedef int DATABLOB ;


 int * g_textcache ;

DATABLOB *
cache_get_text(uint8 cache_id)
{
 DATABLOB *text;

 text = &g_textcache[cache_id];
 return text;
}
