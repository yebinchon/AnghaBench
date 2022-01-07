
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;
 int fprintf (int ,char*,int) ;
 int free (void*) ;
 int g_allocCountTemp ;
 int stderr ;

void SzFreeTemp(void *p, void *address)
{
  p = p;
  free(address);
}
