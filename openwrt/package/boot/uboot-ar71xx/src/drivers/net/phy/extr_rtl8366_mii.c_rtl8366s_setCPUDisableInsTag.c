
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RTL8366S_CPU_CTRL_REG ;
 int RTL8366S_CPU_INSTAG_BIT ;
 int rtl8366_setRegisterBit (int ,int ,int ) ;

int rtl8366s_setCPUDisableInsTag(uint32_t enable)
{
 return rtl8366_setRegisterBit(RTL8366S_CPU_CTRL_REG,
  RTL8366S_CPU_INSTAG_BIT, enable);
}
