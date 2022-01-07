
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int ) ;
 scalar_t__ HWREG (scalar_t__) ;
 scalar_t__ I2C_O_MBCNT ;
 int _I2CBaseValid (scalar_t__) ;

uint32_t
I2CMasterBurstCountGet(uint32_t ui32Base)
{



    ASSERT(_I2CBaseValid(ui32Base));




    return(HWREG(ui32Base + I2C_O_MBCNT));
}
