
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CriticalSection; } ;
typedef TYPE_1__* PRTL_ATOM_TABLE ;
typedef int BOOLEAN ;


 int RtlEnterCriticalSection (int *) ;
 int TRUE ;

BOOLEAN
RtlpLockAtomTable(PRTL_ATOM_TABLE AtomTable)
{
   RtlEnterCriticalSection(&AtomTable->CriticalSection);
   return TRUE;
}
