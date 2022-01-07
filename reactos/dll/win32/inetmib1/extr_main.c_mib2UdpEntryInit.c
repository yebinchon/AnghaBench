
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIB_UDPTABLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GetProcessHeap () ;
 scalar_t__ GetUdpTable (int *,scalar_t__*,int ) ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int TRUE ;
 int * udpTable ;

__attribute__((used)) static void mib2UdpEntryInit(void)
{
    DWORD size = 0, ret = GetUdpTable(((void*)0), &size, TRUE);

    if (ret == ERROR_INSUFFICIENT_BUFFER)
    {
        MIB_UDPTABLE *table = HeapAlloc(GetProcessHeap(), 0, size);
        if (table)
        {
            if (!GetUdpTable(table, &size, TRUE)) udpTable = table;
            else HeapFree(GetProcessHeap(), 0, table);
        }
    }
}
