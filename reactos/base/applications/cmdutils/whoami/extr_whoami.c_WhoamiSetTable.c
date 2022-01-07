
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t Cols; scalar_t__* Content; } ;
typedef TYPE_1__ WhoamiTable ;
typedef int WCHAR ;
typedef size_t UINT ;
typedef scalar_t__ LPWSTR ;
typedef int Entry ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int exit (int) ;
 int wcscpy (scalar_t__,int *) ;
 int wcslen (int *) ;

void WhoamiSetTable(WhoamiTable *pTable, WCHAR *Entry, UINT Row, UINT Col)
{
    LPWSTR Target = HeapAlloc(GetProcessHeap(),
                              HEAP_ZERO_MEMORY,
                              1 + wcslen(Entry) * sizeof(Entry[0]));



    if (!Target)
        exit(1);

    wcscpy(Target, Entry);

    pTable->Content[Row * pTable->Cols + Col] = Target;
}
