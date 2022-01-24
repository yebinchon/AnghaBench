#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct m_option {int dummy; } ;
struct bstr {int dummy; } ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__**) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 scalar_t__ FUNC1 (struct bstr,char*) ; 
 TYPE_1__** contexts ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*,...) ; 

int FUNC3(struct mp_log *log, const struct m_option *opt,
                            struct bstr name, struct bstr param)
{
    if (FUNC1(param, "help")) {
        FUNC2(log, "GPU contexts (APIs):\n");
        FUNC2(log, "    auto (autodetect)\n");
        for (int n = 0; n < FUNC0(contexts); n++)
            FUNC2(log, "    %s (%s)\n", contexts[n]->name, contexts[n]->type);
        return M_OPT_EXIT;
    }
    if (FUNC1(param, "auto"))
        return 1;
    for (int i = 0; i < FUNC0(contexts); i++) {
        if (FUNC1(param, contexts[i]->name))
            return 1;
    }
    return M_OPT_INVALID;
}