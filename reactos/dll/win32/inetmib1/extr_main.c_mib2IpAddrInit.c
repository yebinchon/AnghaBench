
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIB_IPADDRTABLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetIpAddrTable (int *,scalar_t__*,int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int TRUE ;
 int * ipAddrTable ;

__attribute__((used)) static void mib2IpAddrInit(void)
{
    DWORD size = 0, ret = GetIpAddrTable(((void*)0), &size, TRUE);

    if (ret == ERROR_INSUFFICIENT_BUFFER)
    {
        MIB_IPADDRTABLE *table = HeapAlloc(GetProcessHeap(), 0, size);
        if (table)
        {
            if (!GetIpAddrTable(table, &size, TRUE)) ipAddrTable = table;
            else HeapFree(GetProcessHeap(), 0, table );
        }
    }
}
