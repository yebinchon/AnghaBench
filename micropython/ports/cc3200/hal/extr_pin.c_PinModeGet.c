
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (unsigned long) ;
 unsigned long PAD_CONFIG_BASE ;
 unsigned long PAD_MODE_MASK ;
 unsigned long* g_ulPinToPadMap ;

unsigned long PinModeGet(unsigned long ulPin)
{

  unsigned long ulPad;





  ulPad = g_ulPinToPadMap[ulPin & 0x3F];





  ulPad = ((ulPad << 2) + PAD_CONFIG_BASE) ;




  return (HWREG(ulPad) & PAD_MODE_MASK);

}
