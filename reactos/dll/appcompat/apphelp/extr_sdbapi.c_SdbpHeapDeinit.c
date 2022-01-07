
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RtlDestroyHeap (int ) ;
 int SdbpDebugHeapDeinit () ;
 int g_Heap ;

void SdbpHeapDeinit(void)
{



    RtlDestroyHeap(g_Heap);
}
