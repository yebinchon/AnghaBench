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
struct TYPE_3__ {int flags; long long min; long long max; } ;
typedef  TYPE_1__ m_option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_INVALID ; 
 int M_OPT_MAX ; 
 int M_OPT_MIN ; 
 int M_OPT_MISSING_PARAM ; 
 int M_OPT_OUT_OF_RANGE ; 
 long long FUNC1 (struct bstr,struct bstr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static int FUNC3(struct mp_log *log, const m_option_t *opt,
                          struct bstr name, struct bstr param, void *dst)
{
    if (param.len == 0)
        return M_OPT_MISSING_PARAM;

    struct bstr rest;
    long long tmp_int = FUNC1(param, &rest, 10);
    if (rest.len)
        tmp_int = FUNC1(param, &rest, 0);
    if (rest.len) {
        FUNC2(log, "The %.*s option must be an integer: %.*s\n",
               FUNC0(name), FUNC0(param));
        return M_OPT_INVALID;
    }

    if ((opt->flags & M_OPT_MIN) && (tmp_int < opt->min)) {
        FUNC2(log, "The %.*s option must be >= %d: %.*s\n",
               FUNC0(name), (int) opt->min, FUNC0(param));
        return M_OPT_OUT_OF_RANGE;
    }

    if ((opt->flags & M_OPT_MAX) && (tmp_int > opt->max)) {
        FUNC2(log, "The %.*s option must be <= %d: %.*s\n",
               FUNC0(name), (int) opt->max, FUNC0(param));
        return M_OPT_OUT_OF_RANGE;
    }

    if (dst)
        *(long long *)dst = tmp_int;

    return 1;
}