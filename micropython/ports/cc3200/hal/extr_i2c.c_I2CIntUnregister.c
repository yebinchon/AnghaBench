
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 int IntDisable (scalar_t__) ;
 int IntUnregister (scalar_t__) ;
 int _I2CBaseValid (scalar_t__) ;
 scalar_t__ _I2CIntNumberGet (scalar_t__) ;

void
I2CIntUnregister(uint32_t ui32Base)
{
    uint32_t ui32Int;




    ASSERT(_I2CBaseValid(ui32Base));




    ui32Int = _I2CIntNumberGet(ui32Base);

    ASSERT(ui32Int != 0);




    IntDisable(ui32Int);




    IntUnregister(ui32Int);
}
