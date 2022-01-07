
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Elements; size_t StructMembers; } ;
struct ctab_constant {struct ctab_constant* constants; TYPE_1__ desc; } ;
typedef size_t UINT ;
typedef int D3DXHANDLE ;


 int handle_from_constant (struct ctab_constant*) ;

__attribute__((used)) static struct ctab_constant *is_valid_sub_constant(struct ctab_constant *parent, D3DXHANDLE handle)
{
    struct ctab_constant *c;
    UINT i, count;


    if (!parent->constants) return ((void*)0);

    count = parent->desc.Elements > 1 ? parent->desc.Elements : parent->desc.StructMembers;
    for (i = 0; i < count; ++i)
    {
        if (handle_from_constant(&parent->constants[i]) == handle)
            return &parent->constants[i];

        c = is_valid_sub_constant(&parent->constants[i], handle);
        if (c) return c;
    }

    return ((void*)0);
}
