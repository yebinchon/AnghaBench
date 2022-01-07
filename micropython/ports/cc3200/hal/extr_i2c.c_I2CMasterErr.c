
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ASSERT (int ) ;
 int HWREG (int) ;
 int I2C_MASTER_ERR_NONE ;
 int I2C_MCS_ACK ;
 int I2C_MCS_ADRACK ;
 int I2C_MCS_ARBLST ;
 int I2C_MCS_BUSY ;
 int I2C_MCS_ERROR ;
 int I2C_O_MCS ;
 int _I2CBaseValid (int) ;

uint32_t
I2CMasterErr(uint32_t ui32Base)
{
    uint32_t ui32Err;




    ASSERT(_I2CBaseValid(ui32Base));




    ui32Err = HWREG(ui32Base + I2C_O_MCS);





    if(ui32Err & I2C_MCS_BUSY)
    {
        return(I2C_MASTER_ERR_NONE);
    }




    if(ui32Err & (I2C_MCS_ERROR | I2C_MCS_ARBLST))
    {
        return(ui32Err & (I2C_MCS_ARBLST | I2C_MCS_ACK | I2C_MCS_ADRACK));
    }
    else
    {
        return(I2C_MASTER_ERR_NONE);
    }
}
