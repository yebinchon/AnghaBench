
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bit32u ;


 scalar_t__ AddressCurrent ;
 int binRecEnd () ;
 int binRecStart (scalar_t__) ;

void binRecOutProgramStart(bit32u Address)
{
    if (Address != (AddressCurrent+1))
    {
        binRecEnd();
        binRecStart(Address);
    }
    AddressCurrent = Address;
}
