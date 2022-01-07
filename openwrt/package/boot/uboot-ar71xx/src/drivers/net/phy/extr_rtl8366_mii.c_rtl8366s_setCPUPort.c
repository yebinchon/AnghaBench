
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int printf (char*) ;
 scalar_t__ rtl8366s_setCPUDisableInsTag (int) ;
 scalar_t__ rtl8366s_setCPUDropUnda (int) ;
 scalar_t__ rtl8366s_setCPUPortMask (int,int) ;

int rtl8366s_setCPUPort(uint8_t port, uint32_t noTag, uint32_t dropUnda)
{
 uint32_t i;

 if(port >= 6){
  printf("rtl8366s_setCPUPort: invalid port number\n");
  return -1;
 }


 for(i = 0; i < 6; i++)
 {
  if(rtl8366s_setCPUPortMask(i, 0)){
   printf("rtl8366s_setCPUPort: rtl8366s_setCPUPortMask failed\n");
   return -1;
  }
 }

 if(rtl8366s_setCPUPortMask(port, 1)){
  printf("rtl8366s_setCPUPort: rtl8366s_setCPUPortMask failed\n");
  return -1;
 }

 if(rtl8366s_setCPUDisableInsTag(noTag)){
  printf("rtl8366s_setCPUPort: rtl8366s_setCPUDisableInsTag fail\n");
  return -1;
 }

 if(rtl8366s_setCPUDropUnda(dropUnda)){
  printf("rtl8366s_setCPUPort: rtl8366s_setCPUDropUnda fail\n");
  return -1;
 }

 return 0;
}
