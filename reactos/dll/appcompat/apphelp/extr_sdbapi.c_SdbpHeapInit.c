
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HEAP_GROWABLE ;
 int RtlCreateHeap (int ,int *,int ,int,int *,int *) ;
 int SdbpDebugHeapInit (int ) ;
 int g_Heap ;

void SdbpHeapInit(void)
{
    g_Heap = RtlCreateHeap(HEAP_GROWABLE, ((void*)0), 0, 0x10000, ((void*)0), ((void*)0));



}
