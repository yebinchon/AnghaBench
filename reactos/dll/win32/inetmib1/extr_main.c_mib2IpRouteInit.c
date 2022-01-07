
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIB_IPFORWARDTABLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetIpForwardTable (int *,scalar_t__*,int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int TRUE ;
 int * ipRouteTable ;

__attribute__((used)) static void mib2IpRouteInit(void)
{
    DWORD size = 0, ret = GetIpForwardTable(((void*)0), &size, TRUE);

    if (ret == ERROR_INSUFFICIENT_BUFFER)
    {
        MIB_IPFORWARDTABLE *table = HeapAlloc(GetProcessHeap(), 0, size);
        if (table)
        {
            if (!GetIpForwardTable(table, &size, TRUE)) ipRouteTable = table;
            else HeapFree(GetProcessHeap(), 0, table );
        }
    }
}
