
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;

__attribute__((used)) static void pdb_free(void* buffer)
{
    HeapFree(GetProcessHeap(), 0, buffer);
}
