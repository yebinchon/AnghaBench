
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIB3P3_BASE ;
 scalar_t__ HIB3P3_O_MEM_GPIO_WAKE_CONF ;
 unsigned long MAP_PRCMHIBRegRead (scalar_t__) ;
 int MAP_PRCMHIBRegWrite (scalar_t__,unsigned long) ;

void PRCMHibernateWakeUpGPIOSelect(unsigned long ulGPIOBitMap, unsigned long ulType)
{
  unsigned char ucLoop;
  unsigned long ulRegValue;




  ulGPIOBitMap >>= 16;




  for(ucLoop=0; ucLoop < 7; ucLoop++)
  {
    if(ulGPIOBitMap & (1<<ucLoop))
    {
      ulRegValue = MAP_PRCMHIBRegRead(HIB3P3_BASE+HIB3P3_O_MEM_GPIO_WAKE_CONF);
      ulRegValue |= (ulType << (ucLoop*2));
      MAP_PRCMHIBRegWrite(HIB3P3_BASE+HIB3P3_O_MEM_GPIO_WAKE_CONF, ulRegValue);
    }
  }
}
