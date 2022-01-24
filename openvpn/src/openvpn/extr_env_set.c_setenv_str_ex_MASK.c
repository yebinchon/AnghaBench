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
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct env_set*) ; 
 int /*<<< orphan*/  M_INFO ; 
 char* FUNC1 (char const*,char const*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct env_set*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct env_set*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct gc_arena*) ; 
 struct gc_arena FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC7 (char const*,unsigned int const,unsigned int const,char const,struct gc_arena*) ; 
 int FUNC8 (char const*) ; 

void
FUNC9(struct env_set *es,
              const char *name,
              const char *value,
              const unsigned int name_include,
              const unsigned int name_exclude,
              const char name_replace,
              const unsigned int value_include,
              const unsigned int value_exclude,
              const char value_replace)
{
    struct gc_arena gc = FUNC5();
    const char *name_tmp;
    const char *val_tmp = NULL;

    FUNC0(name && FUNC8(name) > 1);

    name_tmp = FUNC7(name, name_include, name_exclude, name_replace, &gc);

    if (value)
    {
        val_tmp = FUNC7(value, value_include, value_exclude, value_replace, &gc);
    }

    FUNC0(es);

    if (val_tmp)
    {
        const char *str = FUNC1(name_tmp, val_tmp, &gc);
        FUNC2(es, str);
#if DEBUG_VERBOSE_SETENV
        msg(M_INFO, "SETENV_ES '%s'", str);
#endif
    }
    else
    {
        FUNC3(es, name_tmp);
    }

    FUNC4(&gc);
}