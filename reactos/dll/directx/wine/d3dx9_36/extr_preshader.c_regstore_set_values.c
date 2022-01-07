
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_regstore {int const** tables; } ;
struct TYPE_2__ {unsigned int component_size; } ;
typedef int const BYTE ;


 int assert (int) ;
 int memcpy (int const*,int const*,unsigned int) ;
 TYPE_1__* table_info ;

__attribute__((used)) static void regstore_set_values(struct d3dx_regstore *rs, unsigned int table, const void *data,
        unsigned int start_offset, unsigned int count)
{
    BYTE *dst = rs->tables[table];
    const BYTE *src = data;
    unsigned int size;

    dst += start_offset * table_info[table].component_size;
    size = count * table_info[table].component_size;
    assert((src < dst && size <= dst - src) || (src > dst && size <= src - dst));
    memcpy(dst, src, size);
}
