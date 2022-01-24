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
struct mp_log {int dummy; } ;
struct mp_cmd {int nargs; TYPE_1__* args; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  v; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct mp_log *log, int msgl, char *header, struct mp_cmd *cmd)
{
    if (!FUNC2(log, msgl))
        return;
    if (header)
        FUNC1(log, msgl, "%s ", header);
    if (!cmd) {
        FUNC1(log, msgl, "(NULL)\n");
        return;
    }
    FUNC1(log, msgl, "%s, flags=%d, args=[", cmd->name, cmd->flags);
    for (int n = 0; n < cmd->nargs; n++) {
        char *s = FUNC0(cmd->args[n].type, &cmd->args[n].v);
        if (n)
            FUNC1(log, msgl, ", ");
        FUNC1(log, msgl, "%s", s ? s : "(NULL)");
        FUNC3(s);
    }
    FUNC1(log, msgl, "]\n");
}