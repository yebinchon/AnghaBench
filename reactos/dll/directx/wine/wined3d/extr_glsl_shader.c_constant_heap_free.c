
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_heap {int entries; } ;


 int heap_free (int ) ;

__attribute__((used)) static void constant_heap_free(struct constant_heap *heap)
{
    heap_free(heap->entries);
}
