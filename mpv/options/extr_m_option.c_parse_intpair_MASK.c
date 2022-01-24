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
struct bstr {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstr) ; 
 int M_OPT_INVALID ; 
 int M_OPT_MISSING_PARAM ; 
 struct bstr FUNC1 (struct bstr,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bstr,char*) ; 
 int FUNC3 (struct bstr,struct bstr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mp_log *log, const struct m_option *opt,
                         struct bstr name, struct bstr param, void *dst)
{
    if (param.len == 0)
        return M_OPT_MISSING_PARAM;

    struct bstr s = param;
    int end = -1;
    int start = FUNC3(s, &s, 10);
    if (s.len == param.len)
        goto bad;
    if (s.len > 0) {
        if (!FUNC2(s, "-"))
            goto bad;
        s = FUNC1(s, 1);
    }
    if (s.len > 0)
        end = FUNC3(s, &s, 10);
    if (s.len > 0)
        goto bad;

    if (dst) {
        int *p = dst;
        p[0] = start;
        p[1] = end;
    }

    return 1;

bad:
    FUNC4(log, "Invalid integer range "
           "specification for option %.*s: %.*s\n",
           FUNC0(name), FUNC0(param));
    return M_OPT_INVALID;
}