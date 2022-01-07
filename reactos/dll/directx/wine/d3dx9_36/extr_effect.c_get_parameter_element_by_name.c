
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {size_t element_count; struct d3dx_parameter* members; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef size_t UINT ;


 int FIXME (char*,char const) ;
 int TRACE (char*,...) ;
 size_t atoi (char const*) ;
 int debugstr_a (char const*) ;
 struct d3dx_parameter* get_parameter_by_name (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static struct d3dx_parameter *get_parameter_element_by_name(struct d3dx9_base_effect *base,
        struct d3dx_parameter *parameter, const char *name)
{
    UINT element;
    struct d3dx_parameter *temp_parameter;
    const char *part;

    TRACE("parameter %p, name %s\n", parameter, debugstr_a(name));

    if (!name || !*name) return ((void*)0);

    element = atoi(name);
    part = strchr(name, ']') + 1;


    if ((part - name) > 1 && parameter->element_count > element)
    {
        temp_parameter = &parameter->members[element];

        switch (*part++)
        {
            case '.':
                return get_parameter_by_name(base, temp_parameter, part);

            case '\0':
                TRACE("Returning parameter %p\n", temp_parameter);
                return temp_parameter;

            default:
                FIXME("Unhandled case \"%c\"\n", *--part);
                break;
        }
    }

    TRACE("Parameter not found\n");
    return ((void*)0);
}
