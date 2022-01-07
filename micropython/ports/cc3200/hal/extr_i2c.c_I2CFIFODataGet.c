
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ASSERT (int ) ;
 int HWREG (int) ;
 int I2C_FIFOSTATUS_RXFE ;
 int I2C_O_FIFODATA ;
 int I2C_O_FIFOSTATUS ;
 int _I2CBaseValid (int) ;

uint32_t
I2CFIFODataGet(uint32_t ui32Base)
{



    ASSERT(_I2CBaseValid(ui32Base));




    while(HWREG(ui32Base + I2C_O_FIFOSTATUS) & I2C_FIFOSTATUS_RXFE)
    {
    }




    return(HWREG(ui32Base + I2C_O_FIFODATA));
}
