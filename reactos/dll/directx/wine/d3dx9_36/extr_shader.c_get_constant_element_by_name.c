
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t Elements; } ;
struct ctab_constant {struct ctab_constant* constants; TYPE_1__ desc; } ;
typedef size_t UINT ;


 int FIXME (char*,char const) ;
 int TRACE (char*,...) ;
 size_t atoi (char const*) ;
 int debugstr_a (char const*) ;
 struct ctab_constant* get_constant_by_name (int *,struct ctab_constant*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static struct ctab_constant *get_constant_element_by_name(struct ctab_constant *constant, const char *name)
{
    const char *part;
    UINT element;

    TRACE("constant %p, name %s\n", constant, debugstr_a(name));

    if (!name || !*name) return ((void*)0);

    element = atoi(name);
    part = strchr(name, ']') + 1;

    if (constant->desc.Elements > element)
    {
        struct ctab_constant *c = constant->constants ? &constant->constants[element] : constant;

        switch (*part++)
        {
            case '.':
                return get_constant_by_name(((void*)0), c, part);

            case '[':
                return get_constant_element_by_name(c, part);

            case '\0':
                TRACE("Returning parameter %p\n", c);
                return c;

            default:
                FIXME("Unhandled case \"%c\"\n", *--part);
                break;
        }
    }

    TRACE("Constant not found\n");
    return ((void*)0);
}
