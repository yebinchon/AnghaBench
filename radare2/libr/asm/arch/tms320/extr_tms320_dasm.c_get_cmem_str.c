
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



const char * get_cmem_str(ut8 key, char * str)
{
 static const char * table[4] = {
  "*cdp", "*cdp+", "*cdp-", "*(cdp+t0)",
 };

 return table[ key & 3 ];
}
