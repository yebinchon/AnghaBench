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
struct m_rel_time {double pos; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
struct bstr {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  m_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_INVALID ; 
 int M_OPT_MISSING_PARAM ; 
 int /*<<< orphan*/  REL_TIME_ABSOLUTE ; 
 int /*<<< orphan*/  REL_TIME_CHAPTER ; 
 int /*<<< orphan*/  REL_TIME_NONE ; 
 int /*<<< orphan*/  REL_TIME_PERCENT ; 
 int /*<<< orphan*/  REL_TIME_RELATIVE ; 
 int /*<<< orphan*/  FUNC1 (struct bstr,int) ; 
 scalar_t__ FUNC2 (struct bstr,char*) ; 
 scalar_t__ FUNC3 (struct bstr,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bstr,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct bstr,char*) ; 
 double FUNC6 (int /*<<< orphan*/ ,struct bstr*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct bstr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct bstr,double*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct mp_log *log, const m_option_t *opt,
                          struct bstr name, struct bstr param, void *dst)
{
    struct m_rel_time t = {0};

    if (param.len == 0)
        return M_OPT_MISSING_PARAM;

    if (FUNC3(param, "none")) {
        t.type = REL_TIME_NONE;
        goto out;
    }

    // Percent pos
    if (FUNC2(param, "%")) {
        double percent = FUNC6(FUNC4(param, 0, -1), &param);
        if (param.len == 0 && percent >= 0 && percent <= 100) {
            t.type = REL_TIME_PERCENT;
            t.pos = percent;
            goto out;
        }
    }

    // Chapter pos
    if (FUNC5(param, "#")) {
        int chapter = FUNC7(FUNC1(param, 1), &param, 10);
        if (param.len == 0 && chapter >= 1) {
            t.type = REL_TIME_CHAPTER;
            t.pos = chapter - 1;
            goto out;
        }
    }

    double time;
    if (FUNC9(param, &time, 0)) {
        if (FUNC5(param, "+") || FUNC5(param, "-")) {
            t.type = REL_TIME_RELATIVE;
        } else {
            t.type = REL_TIME_ABSOLUTE;
        }
        t.pos = time;
        goto out;
    }

    FUNC8(log, "Option %.*s: invalid time or position: '%.*s'\n",
           FUNC0(name), FUNC0(param));
    return M_OPT_INVALID;

out:
    if (dst)
        *(struct m_rel_time *)dst = t;
    return 1;
}