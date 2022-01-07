
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Elements; size_t StructMembers; } ;
struct ctab_constant {struct ctab_constant* constants; TYPE_1__ desc; } ;
typedef size_t UINT ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct ctab_constant*) ;

__attribute__((used)) static void free_constant(struct ctab_constant *constant)
{
    if (constant->constants)
    {
        UINT i, count = constant->desc.Elements > 1 ? constant->desc.Elements : constant->desc.StructMembers;

        for (i = 0; i < count; ++i)
        {
            free_constant(&constant->constants[i]);
        }
        HeapFree(GetProcessHeap(), 0, constant->constants);
    }
}
