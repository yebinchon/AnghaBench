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
struct argv {scalar_t__* argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHKACC_FILE ; 
 int M_NOPREFIX ; 
 int M_OPTERR ; 
 int /*<<< orphan*/  X_OK ; 
 struct argv FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct argv*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*,char const*) ; 

__attribute__((used)) static bool
FUNC5(const char *command, const char *opt, const char *chroot)
{
    struct argv argv;
    bool return_code;

    /* If no command was set, there are no errors to look for */
    if (!command)
    {
        return false;
    }

    /* Extract executable path and arguments */
    argv = FUNC0();
    FUNC1(&argv, command);

    /* if an executable is specified then check it; otherwise, complain */
    if (argv.argv[0])
    {
        /* Scripts requires R_OK as well, but that might fail on binaries which
         * only requires X_OK to function on Unix - a scenario not unlikely to
         * be seen on suid binaries.
         */
        return_code = FUNC3(chroot, CHKACC_FILE, argv.argv[0], X_OK, opt);
    }
    else
    {
        FUNC4(M_NOPREFIX|M_OPTERR, "%s fails with '%s': No path to executable.",
            opt, command);
        return_code = true;
    }

    FUNC2(&argv);

    return return_code;
}