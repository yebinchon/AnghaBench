
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_regstore {scalar_t__* tables; } ;
struct TYPE_2__ {unsigned int component_size; int type; } ;
typedef int BYTE ;


 int FIXME (char*,unsigned int) ;
 double NAN ;


 TYPE_1__* table_info ;

__attribute__((used)) static double regstore_get_double(struct d3dx_regstore *rs, unsigned int table, unsigned int offset)
{
    BYTE *p;

    p = (BYTE *)rs->tables[table] + table_info[table].component_size * offset;
    switch (table_info[table].type)
    {
        case 128:
            return *(float *)p;
        case 129:
            return *(double *)p;
        default:
            FIXME("Unexpected preshader input from table %u.\n", table);
            return NAN;
    }
}
