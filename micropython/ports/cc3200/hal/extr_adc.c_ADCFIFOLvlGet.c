
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ADC_O_adc_ch0_fifo_lvl ;
 int HWREG (unsigned long) ;

unsigned char ADCFIFOLvlGet(unsigned long ulBase, unsigned long ulChannel)
{
  unsigned long ulOffset;




  ulOffset = ADC_O_adc_ch0_fifo_lvl + ulChannel;




  return(HWREG(ulBase + ulOffset) & 0x7);
}
