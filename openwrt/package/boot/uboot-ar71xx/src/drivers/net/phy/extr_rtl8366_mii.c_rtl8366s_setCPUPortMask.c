
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int RTL8366S_CPU_CTRL_REG ;
 int printf (char*) ;
 int rtl8366_setRegisterBit (int ,int,int ) ;

int rtl8366s_setCPUPortMask(uint8_t port, uint32_t enabled)
{
 if(port >= 6){
  printf("rtl8366s_setCPUPortMask: invalid port number\n");
  return -1;
 }

 return rtl8366_setRegisterBit(RTL8366S_CPU_CTRL_REG, port, enabled);
}
