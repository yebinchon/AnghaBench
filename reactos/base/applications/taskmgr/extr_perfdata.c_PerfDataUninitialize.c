
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Flink; } ;
typedef int * PSIDTOUSERNAME ;
typedef TYPE_1__* PLIST_ENTRY ;


 int * CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int DeleteCriticalSection (int *) ;
 int FreeSid (int *) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int List ;
 int PerfDataCriticalSection ;
 int SIDTOUSERNAME ;
 TYPE_1__ SidToUserNameHead ;
 int * SystemProcessorTimeInfo ;
 int * SystemUserSid ;
 int * pPerfData ;

void PerfDataUninitialize(void)
{
    PLIST_ENTRY pCur;
    PSIDTOUSERNAME pEntry;

    if (pPerfData != ((void*)0))
        HeapFree(GetProcessHeap(), 0, pPerfData);

    DeleteCriticalSection(&PerfDataCriticalSection);

    if (SystemUserSid != ((void*)0))
    {
        FreeSid(SystemUserSid);
        SystemUserSid = ((void*)0);
    }


    pCur = SidToUserNameHead.Flink;
    while (pCur != &SidToUserNameHead)
    {
        pEntry = CONTAINING_RECORD(pCur, SIDTOUSERNAME, List);
        pCur = pCur->Flink;
        HeapFree(GetProcessHeap(), 0, pEntry);
    }

    if (SystemProcessorTimeInfo) {
        HeapFree(GetProcessHeap(), 0, SystemProcessorTimeInfo);
    }
}
