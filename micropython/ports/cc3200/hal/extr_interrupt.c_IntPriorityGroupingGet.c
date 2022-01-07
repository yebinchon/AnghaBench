
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HWREG (int ) ;
 unsigned long NUM_PRIORITY ;
 int NVIC_APINT ;
 unsigned long NVIC_APINT_PRIGROUP_M ;
 unsigned long* g_pulPriority ;

unsigned long
IntPriorityGroupingGet(void)
{
    unsigned long ulLoop, ulValue;




    ulValue = HWREG(NVIC_APINT) & NVIC_APINT_PRIGROUP_M;




    for(ulLoop = 0; ulLoop < NUM_PRIORITY; ulLoop++)
    {



        if(ulValue == g_pulPriority[ulLoop])
        {
            break;
        }
    }




    return(ulLoop);
}
