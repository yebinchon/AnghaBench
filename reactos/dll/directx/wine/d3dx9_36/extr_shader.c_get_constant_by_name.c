
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int StructMembers; int Name; } ;
struct ctab_constant {TYPE_2__ desc; struct ctab_constant* constants; } ;
struct TYPE_3__ {int Constants; } ;
struct ID3DXConstantTableImpl {struct ctab_constant* constants; TYPE_1__ desc; } ;
typedef int UINT ;


 int TRACE (char*,...) ;
 int debugstr_a (char const*) ;
 struct ctab_constant* get_constant_element_by_name (struct ctab_constant*,char const*) ;
 int strcspn (char const*,char*) ;
 int strlen (int ) ;
 int strncmp (int ,char const*,int) ;

__attribute__((used)) static struct ctab_constant *get_constant_by_name(struct ID3DXConstantTableImpl *table,
        struct ctab_constant *constant, const char *name)
{
    UINT i, count, length;
    struct ctab_constant *handles;
    const char *part;

    TRACE("table %p, constant %p, name %s\n", table, constant, debugstr_a(name));

    if (!name || !*name) return ((void*)0);

    if (!constant)
    {
        count = table->desc.Constants;
        handles = table->constants;
    }
    else
    {
        count = constant->desc.StructMembers;
        handles = constant->constants;
    }

    length = strcspn(name, "[.");
    part = name + length;

    for (i = 0; i < count; i++)
    {
        if (strlen(handles[i].desc.Name) == length && !strncmp(handles[i].desc.Name, name, length))
        {
            switch (*part++)
            {
                case '.':
                    return get_constant_by_name(((void*)0), &handles[i], part);

                case '[':
                    return get_constant_element_by_name(&handles[i], part);

                default:
                    TRACE("Returning parameter %p\n", &handles[i]);
                    return &handles[i];
            }
        }
    }

    TRACE("Constant not found\n");
    return ((void*)0);
}
