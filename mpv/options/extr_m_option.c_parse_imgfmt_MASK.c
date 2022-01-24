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
struct bstr {scalar_t__ len; } ;
struct TYPE_3__ {scalar_t__ min; } ;
typedef  TYPE_1__ m_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 int M_OPT_MISSING_PARAM ; 
 scalar_t__ FUNC1 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct bstr) ; 
 char** FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct mp_log*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 

__attribute__((used)) static int FUNC8(struct mp_log *log, const m_option_t *opt,
                        struct bstr name, struct bstr param, void *dst)
{
    bool accept_no = opt->min < 0;

    if (param.len == 0)
        return M_OPT_MISSING_PARAM;

    if (!FUNC2(param, "help")) {
        FUNC6(log, "Available formats:");
        char **list = FUNC5();
        for (int i = 0; list[i]; i++)
            FUNC6(log, " %s", list[i]);
        if (accept_no)
            FUNC6(log, " no");
        FUNC6(log, "\n");
        FUNC7(list);
        return M_OPT_EXIT;
    }

    unsigned int fmt = FUNC4(param);
    if (!fmt && !(accept_no && FUNC1(param, "no"))) {
        FUNC3(log, "Option %.*s: unknown format name: '%.*s'\n",
               FUNC0(name), FUNC0(param));
        return M_OPT_INVALID;
    }

    if (dst)
        *((int *)dst) = fmt;

    return 1;
}