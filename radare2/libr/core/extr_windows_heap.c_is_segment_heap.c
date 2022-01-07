
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SegmentSignature; } ;
typedef int PVOID ;
typedef TYPE_1__ HEAP ;
typedef int HANDLE ;


 scalar_t__ ReadProcessMemory (int ,int ,TYPE_1__*,int,int *) ;

__attribute__((used)) static bool is_segment_heap(HANDLE h_proc, PVOID heapBase) {
 HEAP heap;
 if (ReadProcessMemory (h_proc, heapBase, &heap, sizeof (HEAP), ((void*)0))) {
  if (heap.SegmentSignature == 0xddeeddee) {
   return 1;
  }
 }
 return 0;
}
