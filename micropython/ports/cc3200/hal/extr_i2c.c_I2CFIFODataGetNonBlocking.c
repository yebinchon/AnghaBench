
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ASSERT (int ) ;
 int HWREG (int) ;
 int I2C_FIFOSTATUS_RXFE ;
 int I2C_O_FIFODATA ;
 int I2C_O_FIFOSTATUS ;
 int _I2CBaseValid (int) ;

uint32_t
I2CFIFODataGetNonBlocking(uint32_t ui32Base, uint8_t *pui8Data)
{



    ASSERT(_I2CBaseValid(ui32Base));




    if(HWREG(ui32Base + I2C_O_FIFOSTATUS) & I2C_FIFOSTATUS_RXFE)
    {
        return(0);
    }
    else
    {
        *pui8Data = HWREG(ui32Base + I2C_O_FIFODATA);
        return(1);
    }
}
