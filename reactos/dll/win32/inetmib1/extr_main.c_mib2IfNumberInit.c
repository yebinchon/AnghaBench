
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIB_IFTABLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 scalar_t__ GetIfTable (int *,scalar_t__*,int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int * ifTable ;

__attribute__((used)) static void mib2IfNumberInit(void)
{
    DWORD size = 0, ret = GetIfTable(((void*)0), &size, FALSE);

    if (ret == ERROR_INSUFFICIENT_BUFFER)
    {
        MIB_IFTABLE *table = HeapAlloc(GetProcessHeap(), 0, size);
        if (table)
        {
            if (!GetIfTable(table, &size, FALSE)) ifTable = table;
            else HeapFree(GetProcessHeap(), 0, table );
        }
    }
}
