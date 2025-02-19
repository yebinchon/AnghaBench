
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct constant_heap {unsigned int* positions; scalar_t__* contained; int size; struct constant_entry* entries; } ;
struct constant_entry {scalar_t__ version; size_t idx; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ TRUE ;

__attribute__((used)) static void update_heap_entry(struct constant_heap *heap, unsigned int idx, DWORD new_version)
{
    struct constant_entry *entries = heap->entries;
    unsigned int *positions = heap->positions;
    unsigned int heap_idx, parent_idx;

    if (!heap->contained[idx])
    {
        heap_idx = heap->size++;
        heap->contained[idx] = TRUE;
    }
    else
    {
        heap_idx = positions[idx];
    }

    while (heap_idx > 1)
    {
        parent_idx = heap_idx >> 1;

        if (new_version <= entries[parent_idx].version) break;

        entries[heap_idx] = entries[parent_idx];
        positions[entries[parent_idx].idx] = heap_idx;
        heap_idx = parent_idx;
    }

    entries[heap_idx].version = new_version;
    entries[heap_idx].idx = idx;
    positions[idx] = heap_idx;
}
