
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
removeHeapElement(int *heap, int heapLength)
{
 int result = heap[0];
 int val;
 int i;

 if (--heapLength <= 0)
  return result;
 val = heap[heapLength];
 i = 0;
 for (;;)
 {
  int j = 2 * i + 1;

  if (j >= heapLength)
   break;
  if (j + 1 < heapLength &&
   heap[j] < heap[j + 1])
   j++;
  if (val >= heap[j])
   break;
  heap[i] = heap[j];
  i = j;
 }
 heap[i] = val;
 return result;
}
