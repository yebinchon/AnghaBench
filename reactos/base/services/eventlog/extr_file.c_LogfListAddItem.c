
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int ListEntry; } ;
typedef TYPE_1__* PLOGFILE ;


 int EnterCriticalSection (int *) ;
 int InsertTailList (int *,int *) ;
 int LeaveCriticalSection (int *) ;
 int LogFileListCs ;
 int LogFileListHead ;

__attribute__((used)) static VOID
LogfListAddItem(PLOGFILE Item)
{
    EnterCriticalSection(&LogFileListCs);
    InsertTailList(&LogFileListHead, &Item->ListEntry);
    LeaveCriticalSection(&LogFileListCs);
}
