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
struct mp_log {int dummy; } ;
struct bstr {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 int AF_FORMAT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 int M_OPT_MISSING_PARAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct bstr,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_log*,char*,...) ; 

__attribute__((used)) static int FUNC6(struct mp_log *log, const m_option_t *opt,
                      struct bstr name, struct bstr param, void *dst)
{
    if (param.len == 0)
        return M_OPT_MISSING_PARAM;

    if (!FUNC3(param, "help")) {
        FUNC5(log, "Available formats:");
        for (int i = 1; i < AF_FORMAT_COUNT; i++)
            FUNC5(log, " %s", FUNC1(i));
        FUNC5(log, "\n");
        return M_OPT_EXIT;
    }

    int fmt = 0;
    for (int i = 1; i < AF_FORMAT_COUNT; i++) {
        if (FUNC2(param, FUNC1(i)))
            fmt = i;
    }
    if (!fmt) {
        FUNC4(log, "Option %.*s: unknown format name: '%.*s'\n",
               FUNC0(name), FUNC0(param));
        return M_OPT_INVALID;
    }

    if (dst)
        *((int *)dst) = fmt;

    return 1;
}