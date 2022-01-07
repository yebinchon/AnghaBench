
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWREG ;


 int ASSERT (int) ;
 unsigned long NUM_PRIORITY ;
 int NVIC_APINT_VECTKEY ;
 int* g_pulPriority ;

void
IntPriorityGroupingSet(unsigned long ulBits)
{



    ASSERT(ulBits < NUM_PRIORITY);




    HWREG(NVIC_APINT) = NVIC_APINT_VECTKEY | g_pulPriority[ulBits];
}
