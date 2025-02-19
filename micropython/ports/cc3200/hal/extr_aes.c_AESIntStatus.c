
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ AES_BASE ;
 scalar_t__ AES_O_IRQENABLE ;
 scalar_t__ AES_O_IRQSTATUS ;
 int ASSERT (int) ;
 scalar_t__ DTHE_BASE ;
 scalar_t__ DTHE_O_AES_MIS ;
 scalar_t__ DTHE_O_AES_RIS ;
 scalar_t__ HWREG (scalar_t__) ;

uint32_t
AESIntStatus(uint32_t ui32Base, bool bMasked)
{
    uint32_t ui32Temp;
    uint32_t ui32IrqEnable;




    ASSERT(ui32Base == AES_BASE);




    if(bMasked)
    {
        ui32Temp = HWREG(DTHE_BASE + DTHE_O_AES_MIS);
        ui32IrqEnable = HWREG(ui32Base + AES_O_IRQENABLE);
        return((HWREG(ui32Base + AES_O_IRQSTATUS) &
                ui32IrqEnable) | ((ui32Temp & 0x0000000F) << 16));
    }
    else
    {
        ui32Temp = HWREG(DTHE_BASE + DTHE_O_AES_RIS);
        return(HWREG(ui32Base + AES_O_IRQSTATUS) |
               ((ui32Temp & 0x0000000F) << 16));
    }
}
