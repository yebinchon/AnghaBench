
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIN_STRENGTH_2MA ;
 int PIN_TYPE_ANALOG ;
 int PinConfigSet (unsigned long,int ,int ) ;

void PinTypeADC(unsigned long ulPin,unsigned long ulPinMode)
{



  PinConfigSet(ulPin,PIN_STRENGTH_2MA,PIN_TYPE_ANALOG);
}
