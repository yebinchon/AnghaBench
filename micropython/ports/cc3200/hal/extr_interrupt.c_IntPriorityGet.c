
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int HWREG (int ) ;
 unsigned long NUM_INTERRUPTS ;
 int * g_pulRegs ;

long
IntPriorityGet(unsigned long ulInterrupt)
{



    ASSERT((ulInterrupt >= 4) && (ulInterrupt < NUM_INTERRUPTS));




    return((HWREG(g_pulRegs[ulInterrupt >> 2]) >> (8 * (ulInterrupt & 3))) &
           0xFF);
}
