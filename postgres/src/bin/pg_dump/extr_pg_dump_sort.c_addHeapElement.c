
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
addHeapElement(int val, int *heap, int heapLength)
{
 int j;





 j = heapLength;
 while (j > 0)
 {
  int i = (j - 1) >> 1;

  if (val <= heap[i])
   break;
  heap[j] = heap[i];
  j = i;
 }
 heap[j] = val;
}
