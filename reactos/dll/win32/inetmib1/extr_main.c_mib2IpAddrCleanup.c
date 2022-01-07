
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int ipAddrTable ;

__attribute__((used)) static void mib2IpAddrCleanup(void)
{
    HeapFree(GetProcessHeap(), 0, ipAddrTable);
}
