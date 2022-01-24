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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char** FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 char** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,unsigned int) ; 
 unsigned int INITIAL_CONST_NAMES_SIZE ; 
 char* FUNC4 (char**) ; 

__attribute__((used)) static const char **FUNC5(char *skip_constants_string, unsigned int *names_count)
{
    const char **names, **new_alloc;
    const char *name;
    char *s;
    unsigned int size = INITIAL_CONST_NAMES_SIZE;

    names = FUNC1(FUNC0(), 0, sizeof(*names) * size);
    if (!names)
        return NULL;

    *names_count = 0;
    s = skip_constants_string;
    while ((name = FUNC4(&s)))
    {
        if (*names_count == size)
        {
            size *= 2;
            new_alloc = FUNC3(FUNC0(), 0, names, sizeof(*names) * size);
            if (!new_alloc)
            {
                FUNC2(FUNC0(), 0, names);
                return NULL;
            }
            names = new_alloc;
        }
        names[(*names_count)++] = name;
    }
    new_alloc = FUNC3(FUNC0(), 0, names, *names_count * sizeof(*names));
    if (!new_alloc)
        return names;
    return new_alloc;
}