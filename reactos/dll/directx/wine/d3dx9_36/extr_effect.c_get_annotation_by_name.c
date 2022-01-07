
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int name; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int UINT ;


 int FIXME (char*,char const) ;
 int TRACE (char*,...) ;
 int debugstr_a (char const*) ;
 struct d3dx_parameter* get_parameter_by_name (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*) ;
 struct d3dx_parameter* get_parameter_element_by_name (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*) ;
 int strcmp (int ,char const*) ;
 int strcspn (char const*,char*) ;
 int strlen (int ) ;
 int strncmp (int ,char const*,int) ;

__attribute__((used)) static struct d3dx_parameter *get_annotation_by_name(struct d3dx9_base_effect *base,
        unsigned int count, struct d3dx_parameter *annotations, const char *name)
{
    UINT i, length;
    struct d3dx_parameter *temp_parameter;
    const char *part;

    TRACE("count %u, annotations %p, name %s\n", count, annotations, debugstr_a(name));

    if (!name || !*name) return ((void*)0);

    length = strcspn( name, "[.@" );
    part = name + length;

    for (i = 0; i < count; ++i)
    {
        temp_parameter = &annotations[i];

        if (!strcmp(temp_parameter->name, name))
        {
            TRACE("Returning annotation %p\n", temp_parameter);
            return temp_parameter;
        }
        else if (strlen(temp_parameter->name) == length && !strncmp(temp_parameter->name, name, length))
        {
            switch (*part++)
            {
                case '.':
                    return get_parameter_by_name(base, temp_parameter, part);

                case '[':
                    return get_parameter_element_by_name(base, temp_parameter, part);

                default:
                    FIXME("Unhandled case \"%c\"\n", *--part);
                    break;
            }
        }
    }

    TRACE("Annotation not found\n");
    return ((void*)0);
}
