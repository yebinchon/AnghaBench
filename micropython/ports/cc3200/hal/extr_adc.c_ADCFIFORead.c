
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ADC_O_channel0FIFODATA ;
 unsigned long HWREG (unsigned long) ;

unsigned long ADCFIFORead(unsigned long ulBase, unsigned long ulChannel)
{
  unsigned long ulOffset;




  ulOffset = ADC_O_channel0FIFODATA + ulChannel;




  return(HWREG(ulBase + ulOffset));
}
