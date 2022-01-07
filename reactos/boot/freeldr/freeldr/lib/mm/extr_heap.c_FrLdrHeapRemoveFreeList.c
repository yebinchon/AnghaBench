
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {char Tag; TYPE_1__* Data; } ;
struct TYPE_8__ {TYPE_2__ Blocks; } ;
struct TYPE_6__ {int Flink; int Blink; } ;
typedef TYPE_2__* PHEAP_BLOCK ;
typedef TYPE_3__* PHEAP ;


 int ASSERT (int) ;

__attribute__((used)) static VOID
FrLdrHeapRemoveFreeList(
    PHEAP Heap,
    PHEAP_BLOCK Block)
{
    PHEAP_BLOCK Previous, Next;

    Next = &Heap->Blocks + Block->Data[0].Flink;
    Previous = &Heap->Blocks + Block->Data[0].Blink;
    ASSERT((Next->Tag == 0) || (Next->Tag == 'dnE#'));
    ASSERT(Next->Data[0].Blink == Block - &Heap->Blocks);
    ASSERT((Previous->Tag == 0) || (Previous->Tag == 'dnE#'));
    ASSERT(Previous->Data[0].Flink == Block - &Heap->Blocks);

    Next->Data[0].Blink = Previous - &Heap->Blocks;
    Previous->Data[0].Flink = Next - &Heap->Blocks;
}
