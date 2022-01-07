
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 scalar_t__ DES_BASE ;
 scalar_t__ DES_O_IRQENABLE ;
 scalar_t__ DES_O_IRQSTATUS ;
 scalar_t__ DTHE_BASE ;
 scalar_t__ DTHE_O_DES_MIS ;
 int HWREG (scalar_t__) ;

uint32_t
DESIntStatus(uint32_t ui32Base, bool bMasked)
{
   uint32_t ui32IntStatus;



    ASSERT(ui32Base == DES_BASE);




    if(bMasked)
    {
        ui32IntStatus = HWREG(ui32Base + DES_O_IRQSTATUS);
        ui32IntStatus &= HWREG(ui32Base + DES_O_IRQENABLE);
        ui32IntStatus |= ((HWREG(DTHE_BASE + DTHE_O_DES_MIS) & 0x7) << 16);

        return(ui32IntStatus);
    }
    else
    {
        ui32IntStatus = HWREG(ui32Base + DES_O_IRQSTATUS);
        ui32IntStatus |= ((HWREG(DTHE_BASE + DTHE_O_DES_MIS) & 0xD) << 16);
        return(ui32IntStatus);
    }
}
