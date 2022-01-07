
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lu_byte ;



int luaO_log2 (unsigned int x) {
  asm volatile ("nsau %0, %1;" :"=r"(x) : "r"(x));
  return 31 - x;

}
