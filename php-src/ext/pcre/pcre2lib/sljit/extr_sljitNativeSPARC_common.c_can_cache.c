
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sljit_sw ;
typedef int sljit_s32 ;


 int OFFS_REG_MASK ;
 int SIMM_MAX ;
 int SIMM_MIN ;
 int SLJIT_ASSERT (int) ;
 int SLJIT_MEM ;

__attribute__((used)) static sljit_s32 can_cache(sljit_s32 arg, sljit_sw argw, sljit_s32 next_arg, sljit_sw next_argw)
{
 SLJIT_ASSERT((arg & SLJIT_MEM) && (next_arg & SLJIT_MEM));


 if (arg & OFFS_REG_MASK) {
  argw &= 0x3;
  SLJIT_ASSERT(argw);
  next_argw &= 0x3;
  if ((arg & OFFS_REG_MASK) == (next_arg & OFFS_REG_MASK) && argw == next_argw)
   return 1;
  return 0;
 }

 if (((next_argw - argw) <= SIMM_MAX && (next_argw - argw) >= SIMM_MIN))
  return 1;
 return 0;
}
