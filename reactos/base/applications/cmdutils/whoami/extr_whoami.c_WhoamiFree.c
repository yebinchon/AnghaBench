
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int BOOL ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;

BOOL WhoamiFree(VOID* Buffer)
{
    return HeapFree(GetProcessHeap(), 0, Buffer);
}
