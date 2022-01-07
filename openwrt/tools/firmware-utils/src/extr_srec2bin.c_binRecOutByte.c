
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bit8u ;
typedef scalar_t__ bit32u ;


 scalar_t__ AddressCurrent ;
 int CheckSum ;
 int binOut8 (scalar_t__) ;
 int binRecEnd () ;
 int binRecStart (scalar_t__) ;

void binRecOutByte(bit32u Address, bit8u Data)
{




    if (Address != (AddressCurrent+1))
    {
        binRecEnd();
        binRecStart(Address);
    }
    AddressCurrent = Address;
    CheckSum += Data;
    binOut8( Data );
}
