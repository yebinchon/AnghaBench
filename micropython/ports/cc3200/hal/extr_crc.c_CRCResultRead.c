
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 scalar_t__ DTHE_BASE ;
 scalar_t__ DTHE_O_CRC_RSLT_PP ;
 scalar_t__ HWREG (scalar_t__) ;

uint32_t
CRCResultRead(uint32_t ui32Base)
{



    ASSERT(ui32Base == DTHE_BASE);




    return(HWREG(DTHE_BASE + DTHE_O_CRC_RSLT_PP));

}
