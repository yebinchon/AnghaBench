
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIB3P3_BASE ;
 scalar_t__ HIB3P3_O_MEM_HIB_REG2 ;
 int MAP_PRCMHIBRegWrite (scalar_t__,unsigned long) ;

void PRCMOCRRegisterWrite(unsigned char ucIndex, unsigned long ulRegValue)
{
  MAP_PRCMHIBRegWrite(HIB3P3_BASE+HIB3P3_O_MEM_HIB_REG2+(ucIndex << 2),ulRegValue);
}
