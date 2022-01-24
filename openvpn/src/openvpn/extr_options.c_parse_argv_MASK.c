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
struct options {int dummy; } ;
struct env_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int MAX_PARMS ; 
 int /*<<< orphan*/  FUNC1 (struct options*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,unsigned int const,unsigned int*,struct env_set*) ; 
 int /*<<< orphan*/  FUNC2 (int const,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(struct options *options,
           const int argc,
           char *argv[],
           const int msglevel,
           const unsigned int permission_mask,
           unsigned int *option_types_found,
           struct env_set *es)
{
    int i, j;

    /* usage message */
    if (argc <= 1)
    {
        FUNC4();
    }

    /* config filename specified only? */
    if (argc == 2 && FUNC3(argv[1], "--", 2))
    {
        char *p[MAX_PARMS];
        FUNC0(p);
        p[0] = "config";
        p[1] = argv[1];
        FUNC1(options, p, NULL, 0, 0, msglevel, permission_mask, option_types_found, es);
    }
    else
    {
        /* parse command line */
        for (i = 1; i < argc; ++i)
        {
            char *p[MAX_PARMS];
            FUNC0(p);
            p[0] = argv[i];
            if (FUNC3(p[0], "--", 2))
            {
                FUNC2(msglevel, "I'm trying to parse \"%s\" as an --option parameter but I don't see a leading '--'", p[0]);
            }
            else
            {
                p[0] += 2;
            }

            for (j = 1; j < MAX_PARMS; ++j)
            {
                if (i + j < argc)
                {
                    char *arg = argv[i + j];
                    if (FUNC3(arg, "--", 2))
                    {
                        p[j] = arg;
                    }
                    else
                    {
                        break;
                    }
                }
            }
            FUNC1(options, p, NULL, 0, 0, msglevel, permission_mask, option_types_found, es);
            i += j - 1;
        }
    }
}