
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ P_OSI_INTR_ENTRY ;
typedef int OsiReturnVal_e ;


 int MAP_IntEnable (int) ;
 int MAP_IntPrioritySet (int,unsigned char) ;
 int MAP_IntRegister (int,void (*) ()) ;
 int OSI_OK ;

OsiReturnVal_e osi_InterruptRegister(int iIntrNum,P_OSI_INTR_ENTRY pEntry,unsigned char ucPriority)
{
 MAP_IntRegister(iIntrNum,(void(*)(void))pEntry);
 MAP_IntPrioritySet(iIntrNum, ucPriority);
 MAP_IntEnable(iIntrNum);
 return OSI_OK;
}
