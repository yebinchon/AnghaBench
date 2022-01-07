
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;



const char * get_xreg_str(ut8 key, char * str)
{
 static const char * table[16] = {
  "ac0", "ac1", "ac2", "ac3", "xsp", "xssp", "xdp", "xcdp",
  "xar0", "xar1", "xar2", "xar3", "xar4", "xar5", "xar6", "xar7",
 };

 return table[ key & 15 ];
}
