#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_15__ {int len; char* start; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int M_OPT_INVALID ; 
 TYPE_1__ FUNC1 (TYPE_1__,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*) ; 
 TYPE_1__ FUNC3 (TYPE_1__,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,char*) ; 
 int FUNC5 (TYPE_1__,char*) ; 
 int FUNC6 (TYPE_1__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_log*,char*,int,...) ; 

__attribute__((used)) static int FUNC8(struct mp_log *log, bstr optname, char *termset,
                         bstr *str, bstr *out_subparam)
{
    bstr p = *str;
    bstr subparam = {0};

    if (FUNC2(&p, "\"")) {
        int optlen = FUNC5(p, "\"");
        subparam = FUNC3(p, 0, optlen);
        p = FUNC1(p, optlen);
        if (!FUNC4(p, "\"")) {
            FUNC7(log, "Terminating '\"' missing for '%.*s'\n",
                   FUNC0(optname));
            return M_OPT_INVALID;
        }
        p = FUNC1(p, 1);
    } else if (FUNC2(&p, "[")) {
        bstr s = p;
        int balance = 1;
        while (p.len && balance > 0) {
            if (p.start[0] == '[') {
                balance++;
            } else if (p.start[0] == ']') {
                balance--;
            }
            p = FUNC1(p, 1);
        }
        if (balance != 0) {
            FUNC7(log, "Terminating ']' missing for '%.*s'\n",
                   FUNC0(optname));
            return M_OPT_INVALID;
        }
        subparam = FUNC3(s, 0, s.len - p.len - 1);
    } else if (FUNC2(&p, "%")) {
        int optlen = FUNC6(p, &p, 0);
        if (!FUNC4(p, "%") || (optlen > p.len - 1)) {
            FUNC7(log, "Invalid length %d for '%.*s'\n",
                   optlen, FUNC0(optname));
            return M_OPT_INVALID;
        }
        subparam = FUNC3(p, 1, optlen + 1);
        p = FUNC1(p, optlen + 1);
    } else {
        // Skip until the next character that could possibly be a meta
        // character in option parsing.
        int optlen = FUNC5(p, termset);
        subparam = FUNC3(p, 0, optlen);
        p = FUNC1(p, optlen);
    }

    *str = p;
    *out_subparam = subparam;
    return 0;
}