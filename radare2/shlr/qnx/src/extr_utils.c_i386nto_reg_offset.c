
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* i386nto_gregset_reg_offset ;

int i386nto_reg_offset (int regnum) {
 if (regnum >= 0 && regnum < ARRAY_SIZE (i386nto_gregset_reg_offset))
  return i386nto_gregset_reg_offset[regnum];

 return -1;
}
