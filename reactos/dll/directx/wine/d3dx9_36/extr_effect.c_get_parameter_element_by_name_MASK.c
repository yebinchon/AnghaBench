#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct d3dx_parameter {size_t element_count; struct d3dx_parameter* members; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 struct d3dx_parameter* FUNC4 (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static struct d3dx_parameter *FUNC6(struct d3dx9_base_effect *base,
        struct d3dx_parameter *parameter, const char *name)
{
    UINT element;
    struct d3dx_parameter *temp_parameter;
    const char *part;

    FUNC1("parameter %p, name %s\n", parameter, FUNC3(name));

    if (!name || !*name) return NULL;

    element = FUNC2(name);
    part = FUNC5(name, ']') + 1;

    /* check for empty [] && element range */
    if ((part - name) > 1 && parameter->element_count > element)
    {
        temp_parameter = &parameter->members[element];

        switch (*part++)
        {
            case '.':
                return FUNC4(base, temp_parameter, part);

            case '\0':
                FUNC1("Returning parameter %p\n", temp_parameter);
                return temp_parameter;

            default:
                FUNC0("Unhandled case \"%c\"\n", *--part);
                break;
        }
    }

    FUNC1("Parameter not found\n");
    return NULL;
}