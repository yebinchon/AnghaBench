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
struct m_option {struct m_opt_choice_alternatives* priv; } ;
struct m_opt_choice_alternatives {scalar_t__ name; } ;
struct bstr {scalar_t__ len; } ;
typedef  struct bstr bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_INVALID ; 
 int M_OPT_UNKNOWN ; 
 int FUNC1 (struct m_option const*,int*,struct bstr) ; 
 int /*<<< orphan*/  FUNC2 (struct bstr,char*,struct bstr*,struct bstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,char*,...) ; 

__attribute__((used)) static int FUNC5(struct mp_log *log, const struct m_option *opt,
                       struct bstr name, struct bstr param, void *dst)
{
    int value = 0;
    while (param.len) {
        bstr flag;
        FUNC2(param, "+", &flag, &param);
        int r = FUNC1(opt, &value, flag);
        if (r == M_OPT_UNKNOWN) {
            FUNC3(log, "Invalid flag for option %.*s: %.*s\n",
                     FUNC0(name), FUNC0(flag));
            FUNC4(log, "Valid flags are:\n");
            struct m_opt_choice_alternatives *alt;
            for (alt = opt->priv; alt->name; alt++)
                FUNC4(log, "    %s\n", alt->name);
            FUNC4(log, "Flags can usually be combined with '+'.\n");
            return M_OPT_INVALID;
        } else if (r < 0) {
            FUNC3(log, "Option %.*s: flag '%.*s' conflicts with a previous "
                     "flag value.\n", FUNC0(name), FUNC0(flag));
            return M_OPT_INVALID;
        }
    }
    if (dst)
        *(int *)dst = value;
    return 1;
}