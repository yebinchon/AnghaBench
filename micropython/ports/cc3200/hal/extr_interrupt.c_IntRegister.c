
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 scalar_t__ HWREG (int ) ;
 unsigned long NUM_INTERRUPTS ;
 int NVIC_VTABLE ;

void
IntRegister(unsigned long ulInterrupt, void (*pfnHandler)(void))
{
    unsigned long *ulNvicTbl;




    ASSERT(ulInterrupt < NUM_INTERRUPTS);

    ulNvicTbl = (unsigned long *)HWREG(NVIC_VTABLE);
    ulNvicTbl[ulInterrupt]= (unsigned long)pfnHandler;
}
