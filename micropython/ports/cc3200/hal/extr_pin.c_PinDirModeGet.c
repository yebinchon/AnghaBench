
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HWREG (unsigned long) ;
 unsigned long PAD_CONFIG_BASE ;
 unsigned long* g_ulPinToPadMap ;

unsigned long PinDirModeGet(unsigned long ulPin)
{
  unsigned long ulPad;




  ulPad = g_ulPinToPadMap[ulPin & 0x3F];




  ulPad = ((ulPad << 2) + PAD_CONFIG_BASE);




  return ((HWREG(ulPad) & 0xC00));
}
