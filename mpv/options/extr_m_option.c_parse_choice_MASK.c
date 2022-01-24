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
struct m_option {int flags; struct m_opt_choice_alternatives* priv; } ;
struct m_opt_choice_alternatives {char* name; int value; } ;
struct bstr {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 int M_OPT_MAX ; 
 int M_OPT_MIN ; 
 int M_OPT_MISSING_PARAM ; 
 int /*<<< orphan*/  FUNC1 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*,...) ; 
 int /*<<< orphan*/  mp_null_log ; 
 int FUNC4 (int /*<<< orphan*/ ,struct m_option const*,struct bstr,struct bstr,long long*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_log*,struct m_option const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(struct mp_log *log, const struct m_option *opt,
                        struct bstr name, struct bstr param, void *dst)
{
    struct m_opt_choice_alternatives *alt = opt->priv;
    for ( ; alt->name; alt++) {
        if (!FUNC1(param, alt->name))
            break;
    }
    if (!alt->name && param.len == 0) {
        // allow flag-style options, e.g. "--mute" implies "--mute=yes"
        for (alt = opt->priv; alt->name; alt++) {
            if (!FUNC6("yes", alt->name))
                break;
        }
    }
    if (!alt->name) {
        if (!FUNC1(param, "help")) {
            FUNC3(log, "Valid values for option %.*s are:\n", FUNC0(name));
            FUNC5(log, opt);
            return M_OPT_EXIT;
        }
        if (param.len == 0)
            return M_OPT_MISSING_PARAM;
        if ((opt->flags & M_OPT_MIN) && (opt->flags & M_OPT_MAX)) {
            long long val;
            if (FUNC4(mp_null_log, opt, name, param, &val) == 1) {
                if (dst)
                    *(int *)dst = val;
                return 1;
            }
        }
        FUNC2(log, "Invalid value for option %.*s: %.*s\n",
                 FUNC0(name), FUNC0(param));
        FUNC3(log, "Valid values are:\n");
        FUNC5(log, opt);
        return M_OPT_INVALID;
    }
    if (dst)
        *(int *)dst = alt->value;

    return 1;
}