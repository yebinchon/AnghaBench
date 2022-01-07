
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBoolean ;


 int PIN_STRENGTH_2MA ;
 int PIN_TYPE_OD ;
 int PIN_TYPE_STD ;
 int PinConfigSet (unsigned long,int ,int ) ;
 int PinModeSet (unsigned long,unsigned long) ;

void PinTypeGPIO(unsigned long ulPin,unsigned long ulPinMode,tBoolean bOpenDrain)
{




    if(bOpenDrain)
    {
            PinConfigSet(ulPin, PIN_STRENGTH_2MA, PIN_TYPE_OD);
    }
    else
    {
            PinConfigSet(ulPin, PIN_STRENGTH_2MA, PIN_TYPE_STD);
    }




    PinModeSet(ulPin, ulPinMode);

}
