
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Rows; int Cols; } ;
typedef TYPE_1__ WhoamiTable ;
typedef int UINT ;
typedef int LPWSTR ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int exit (int) ;
 int wprintf (char*) ;

WhoamiTable *WhoamiAllocTable(UINT Rows, UINT Cols)
{
    WhoamiTable *pTable = HeapAlloc(GetProcessHeap(),
                                    HEAP_ZERO_MEMORY,
                                    sizeof(WhoamiTable) + sizeof(LPWSTR) * Rows * Cols);



    if (!pTable)
    {
        wprintf(L"ERROR: Not enough memory for displaying the table.");
        exit(1);
    }

    pTable->Rows = Rows;
    pTable->Cols = Cols;

    return pTable;
}
