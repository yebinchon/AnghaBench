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
struct m_option {int dummy; } ;
struct bstr {int dummy; } ;

/* Variables and functions */
 int M_OPT_EXIT ; 
 int M_OPT_INVALID ; 
 scalar_t__ FUNC0 (struct bstr,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,struct bstr) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct mp_log *log, const struct m_option *opt,
                                 struct bstr name, struct bstr param)
{
    if (FUNC0(param, "help")) {
        FUNC2(log);
        return M_OPT_EXIT;
    }

    char *spec = FUNC1(NULL, param);
    if (!FUNC4(spec, NULL)) {
        FUNC3(log, "Invalid value for option drm-mode. Must be a positive number, a string of the format WxH[@R] or 'help'\n");
        FUNC5(spec);
        return M_OPT_INVALID;
    }
    FUNC5(spec);

    return 1;
}