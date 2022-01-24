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
struct options {char* foreign_option_index; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  M_WARN ; 
 int /*<<< orphan*/  OPTION_PARM_SIZE ; 
 struct buffer FUNC1 (int /*<<< orphan*/ ,struct gc_arena*) ; 
 int FUNC2 (struct buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct env_set*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct options *o, char *argv[], int len, struct env_set *es)
{
    if (len > 0)
    {
        struct gc_arena gc = FUNC4();
        struct buffer name = FUNC1(OPTION_PARM_SIZE, &gc);
        struct buffer value = FUNC1(OPTION_PARM_SIZE, &gc);
        int i;
        bool first = true;
        bool good = true;

        good &= FUNC2(&name, "foreign_option_%d", o->foreign_option_index + 1);
        ++o->foreign_option_index;
        for (i = 0; i < len; ++i)
        {
            if (argv[i])
            {
                if (!first)
                {
                    good &= FUNC2(&value, " ");
                }
                good &= FUNC2(&value, "%s", argv[i]);
                first = false;
            }
        }
        if (good)
        {
            FUNC6(es, FUNC0(&name), FUNC0(&value));
        }
        else
        {
            FUNC5(M_WARN, "foreign_option: name/value overflow");
        }
        FUNC3(&gc);
    }
}