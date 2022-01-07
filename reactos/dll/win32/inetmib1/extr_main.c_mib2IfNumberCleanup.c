
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int ifTable ;

__attribute__((used)) static void mib2IfNumberCleanup(void)
{
    HeapFree(GetProcessHeap(), 0, ifTable);
}
