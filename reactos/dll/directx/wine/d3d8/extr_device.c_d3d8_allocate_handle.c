
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d8_handle_table {size_t entry_count; size_t table_size; struct d3d8_handle_entry* entries; struct d3d8_handle_entry* free_entries; } ;
struct d3d8_handle_entry {int type; struct d3d8_handle_entry* object; } ;
typedef enum d3d8_handle_type { ____Placeholder_d3d8_handle_type } d3d8_handle_type ;
typedef int UINT ;
typedef int DWORD ;


 int D3D8_HANDLE_FREE ;
 int D3D8_INVALID_HANDLE ;
 int ERR (char*,...) ;
 struct d3d8_handle_entry* heap_realloc (struct d3d8_handle_entry*,int) ;

__attribute__((used)) static DWORD d3d8_allocate_handle(struct d3d8_handle_table *t, void *object, enum d3d8_handle_type type)
{
    struct d3d8_handle_entry *entry;

    if (t->free_entries)
    {
        DWORD index = t->free_entries - t->entries;

        entry = t->free_entries;
        if (entry->type != D3D8_HANDLE_FREE)
        {
            ERR("Handle %u(%p) is in the free list, but has type %#x.\n", index, entry, entry->type);
            return D3D8_INVALID_HANDLE;
        }
        t->free_entries = entry->object;
        entry->object = object;
        entry->type = type;

        return index;
    }

    if (!(t->entry_count < t->table_size))
    {

        UINT new_size = t->table_size + (t->table_size >> 1);
        struct d3d8_handle_entry *new_entries;

        if (!(new_entries = heap_realloc(t->entries, new_size * sizeof(*t->entries))))
        {
            ERR("Failed to grow the handle table.\n");
            return D3D8_INVALID_HANDLE;
        }
        t->entries = new_entries;
        t->table_size = new_size;
    }

    entry = &t->entries[t->entry_count];
    entry->object = object;
    entry->type = type;

    return t->entry_count++;
}
