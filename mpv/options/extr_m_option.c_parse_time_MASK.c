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
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 double MP_NOPTS_VALUE ; 
 int M_OPT_INVALID ; 
 int M_OPT_MISSING_PARAM ; 
 scalar_t__ FUNC2 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bstr,double*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mp_log *log, const m_option_t *opt,
                      struct bstr name, struct bstr param, void *dst)
{
    if (param.len == 0)
        return M_OPT_MISSING_PARAM;

    double time = MP_NOPTS_VALUE;
    if (FUNC1(opt) && FUNC2(param, "no")) {
        // nothing
    } else if (!FUNC4(param, &time, 0)) {
        FUNC3(log, "Option %.*s: invalid time: '%.*s'\n",
               FUNC0(name), FUNC0(param));
        return M_OPT_INVALID;
    }

    if (dst)
        *(double *)dst = time;
    return 1;
}