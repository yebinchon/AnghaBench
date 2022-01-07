
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I386_NUM_FREGS ;
 int I386_NUM_GREGS ;
 int I386_SSE_NUM_REGS ;
 int NTO_REG_END ;
 int NTO_REG_FLOAT ;
 int NTO_REG_GENERAL ;

int i386nto_regset_id (int regno) {
 if (regno == -1)
  return NTO_REG_END;
 if (regno < I386_NUM_GREGS)
  return NTO_REG_GENERAL;
 if (regno < I386_NUM_GREGS + I386_NUM_FREGS)
  return NTO_REG_FLOAT;
 if (regno < I386_SSE_NUM_REGS)
  return NTO_REG_FLOAT;

 return -1;
}
