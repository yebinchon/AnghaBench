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
struct options {int user_script_used; int /*<<< orphan*/ * chroot_dir; } ;
typedef  int /*<<< orphan*/  script_name ;

/* Variables and functions */
 int /*<<< orphan*/  M_USAGE ; 
 int /*<<< orphan*/  M_WARN ; 
 scalar_t__ FUNC0 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 

__attribute__((used)) static void
FUNC3(struct options *options,
                const char **script,
                const char *new_script,
                const char *type,
                bool in_chroot)
{
    if (*script)
    {
        FUNC1(M_WARN, "Multiple --%s scripts defined.  "
            "The previously configured script is overridden.", type);
    }
    *script = new_script;
    options->user_script_used = true;

#ifndef ENABLE_SMALL
    {
        char script_name[100];
        FUNC2(script_name, sizeof(script_name),
                         "--%s script", type);

        if (FUNC0(*script, script_name, (in_chroot ? options->chroot_dir : NULL)))
        {
            FUNC1(M_USAGE, "Please correct this error.");
        }

    }
#endif
}