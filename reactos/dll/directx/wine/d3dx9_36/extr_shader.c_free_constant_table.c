
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t Constants; } ;
struct ID3DXConstantTableImpl {int * ctab; int * constants; TYPE_1__ desc; } ;
typedef size_t UINT ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int free_constant (int *) ;

__attribute__((used)) static void free_constant_table(struct ID3DXConstantTableImpl *table)
{
    if (table->constants)
    {
        UINT i;

        for (i = 0; i < table->desc.Constants; ++i)
        {
            free_constant(&table->constants[i]);
        }
        HeapFree(GetProcessHeap(), 0, table->constants);
    }
    HeapFree(GetProcessHeap(), 0, table->ctab);
}
