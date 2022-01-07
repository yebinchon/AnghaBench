
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 int IntEnable (scalar_t__) ;
 int IntRegister (scalar_t__,void (*) ()) ;
 int _I2CBaseValid (scalar_t__) ;
 scalar_t__ _I2CIntNumberGet (scalar_t__) ;

void
I2CIntRegister(uint32_t ui32Base, void (*pfnHandler)(void))
{
    uint32_t ui32Int;




    ASSERT(_I2CBaseValid(ui32Base));




    ui32Int = _I2CIntNumberGet(ui32Base);

    ASSERT(ui32Int != 0);




    IntRegister(ui32Int, pfnHandler);




    IntEnable(ui32Int);
}
