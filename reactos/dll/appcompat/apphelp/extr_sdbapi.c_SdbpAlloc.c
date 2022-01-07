
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int LPVOID ;


 int HEAP_ZERO_MEMORY ;
 int RtlAllocateHeap (int ,int ,int ) ;
 int SdbpHeap () ;
 int SdbpInsertAllocation (int ,int ,int,char const*) ;

LPVOID SdbpAlloc(SIZE_T size



    )
{
    LPVOID mem = RtlAllocateHeap(SdbpHeap(), HEAP_ZERO_MEMORY, size);



    return mem;
}
