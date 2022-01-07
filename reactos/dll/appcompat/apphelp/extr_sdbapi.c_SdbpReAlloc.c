
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int LPVOID ;


 int HEAP_ZERO_MEMORY ;
 int RtlReAllocateHeap (int ,int ,int ,int ) ;
 int SdbpHeap () ;
 int SdbpUpdateAllocation (int ,int ,int ,int,char const*) ;

LPVOID SdbpReAlloc(LPVOID mem, SIZE_T size, SIZE_T oldSize



    )
{
    LPVOID newmem = RtlReAllocateHeap(SdbpHeap(), HEAP_ZERO_MEMORY, mem, size);



    return newmem;
}
