
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d3dx_regstore {scalar_t__* tables; } ;
struct TYPE_2__ {unsigned int component_size; int type; } ;
typedef int BYTE ;
typedef int BOOL ;


 int FIXME (char*,int) ;




 int lrint (double) ;
 TYPE_1__* table_info ;

__attribute__((used)) static void regstore_set_double(struct d3dx_regstore *rs, unsigned int table, unsigned int offset, double v)
{
    BYTE *p;

    p = (BYTE *)rs->tables[table] + table_info[table].component_size * offset;
    switch (table_info[table].type)
    {
        case 129 : *(float *)p = v; break;
        case 130: *(double *)p = v; break;
        case 128 : *(int *)p = lrint(v); break;
        case 131 : *(BOOL *)p = !!v; break;
        default:
            FIXME("Bad type %u.\n", table_info[table].type);
            break;
    }
}
