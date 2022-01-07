
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int ASSERT (int) ;
 int HWREG (scalar_t__) ;
 scalar_t__ SHAMD5_BASE ;
 int SHAMD5_MODE_ALGO_M ;




 scalar_t__ SHAMD5_O_IDIGEST_A ;
 scalar_t__ SHAMD5_O_MODE ;

void
SHAMD5ResultRead(uint32_t ui32Base, uint8_t *pui8Dest)
{
    uint32_t ui32Idx, ui32Count;




    ASSERT(ui32Base == SHAMD5_BASE);




    switch(HWREG(ui32Base + SHAMD5_O_MODE) & SHAMD5_MODE_ALGO_M)
    {



        case 131:
        {



            ui32Count = 16;




            break;
        }




        case 130:
        {



            ui32Count = 20;




            break;
        }




        case 129:
        {



            ui32Count = 28;




            break;
        }




        case 128:
        {



            ui32Count = 32;




            break;
        }




        default:
        {




            return;
        }
    }




    for(ui32Idx = 0; ui32Idx < ui32Count; ui32Idx += 4)
    {
     *((uint32_t *)(pui8Dest+ui32Idx)) =
                                HWREG(ui32Base + SHAMD5_O_IDIGEST_A + ui32Idx);
    }
}
