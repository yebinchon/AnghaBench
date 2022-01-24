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
struct buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ OPTION_PARM_SIZE ; 
 struct buffer FUNC0 (scalar_t__,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_arena*) ; 
 struct gc_arena FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int const,char,int,struct buffer*,struct buffer*,char*,char*) ; 

__attribute__((used)) static void
FUNC5(const int msglevel, char *actual, const char *expected, size_t actual_n)
{
    struct gc_arena gc = FUNC3();

    if (actual_n > 0)
    {
        struct buffer local = FUNC0(OPTION_PARM_SIZE + 16, &gc);
        struct buffer remote = FUNC0(OPTION_PARM_SIZE + 16, &gc);
        actual[actual_n - 1] = 0;

        FUNC1(&local, "version %s", expected);
        FUNC1(&remote, "version %s", actual);

        FUNC4(msglevel, ',', true,
                                   &local, &remote,
                                   "local", "remote");

        FUNC4(msglevel, ',', false,
                                   &remote, &local,
                                   "remote", "local");
    }

    FUNC2(&gc);
}