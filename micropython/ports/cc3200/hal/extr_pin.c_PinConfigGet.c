
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (unsigned long) ;
 unsigned long PAD_CONFIG_BASE ;
 unsigned long PAD_STRENGTH_MASK ;
 unsigned long PAD_TYPE_MASK ;
 unsigned long* g_ulPinToPadMap ;

void PinConfigGet(unsigned long ulPin,unsigned long *pulPinStrength,
             unsigned long *pulPinType)
{

  unsigned long ulPad;





  ulPad = g_ulPinToPadMap[ulPin & 0x3F];





  ulPad = ((ulPad << 2) + PAD_CONFIG_BASE);





  *pulPinType = (HWREG(ulPad) & PAD_TYPE_MASK);




  *pulPinStrength = (HWREG(ulPad) & PAD_STRENGTH_MASK);

}
