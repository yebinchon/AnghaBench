#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t Elements; } ;
struct ctab_constant {struct ctab_constant* constants; TYPE_1__ desc; } ;
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 struct ctab_constant* FUNC4 (int /*<<< orphan*/ *,struct ctab_constant*,char const*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static struct ctab_constant *FUNC6(struct ctab_constant *constant, const char *name)
{
    const char *part;
    UINT element;

    FUNC1("constant %p, name %s\n", constant, FUNC3(name));

    if (!name || !*name) return NULL;

    element = FUNC2(name);
    part = FUNC5(name, ']') + 1;

    if (constant->desc.Elements > element)
    {
        struct ctab_constant *c = constant->constants ? &constant->constants[element] : constant;

        switch (*part++)
        {
            case '.':
                return FUNC4(NULL, c, part);

            case '[':
                return FUNC6(c, part);

            case '\0':
                FUNC1("Returning parameter %p\n", c);
                return c;

            default:
                FUNC0("Unhandled case \"%c\"\n", *--part);
                break;
        }
    }

    FUNC1("Constant not found\n");
    return NULL;
}