
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ADC_CH_0 ;
 unsigned long ADC_CH_1 ;
 unsigned long ADC_CH_2 ;
 unsigned long INT_ADCCH0 ;
 unsigned long INT_ADCCH1 ;
 unsigned long INT_ADCCH2 ;
 unsigned long INT_ADCCH3 ;
 int IntEnable (unsigned long) ;
 int IntRegister (unsigned long,void (*) ()) ;

void ADCIntRegister(unsigned long ulBase, unsigned long ulChannel,
                    void (*pfnHandler)(void))
{
  unsigned long ulIntNo;




  ulIntNo = (ulChannel == ADC_CH_0)? INT_ADCCH0 :
            (ulChannel == ADC_CH_1)? INT_ADCCH1 :
            (ulChannel == ADC_CH_2)? INT_ADCCH2 : INT_ADCCH3;




  IntRegister(ulIntNo,pfnHandler);




  IntEnable(ulIntNo);
}
