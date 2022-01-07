
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_regstore {int * tables; int * table_sizes; } ;
struct TYPE_2__ {unsigned int component_size; } ;
typedef int HRESULT ;


 int D3D_OK ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HeapAlloc (int ,int ,unsigned int) ;
 unsigned int get_offset_reg (unsigned int,int ) ;
 TYPE_1__* table_info ;

__attribute__((used)) static HRESULT regstore_alloc_table(struct d3dx_regstore *rs, unsigned int table)
{
    unsigned int size;

    size = get_offset_reg(table, rs->table_sizes[table]) * table_info[table].component_size;
    if (size)
    {
        rs->tables[table] = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, size);
        if (!rs->tables[table])
            return E_OUTOFMEMORY;
    }
    return D3D_OK;
}
