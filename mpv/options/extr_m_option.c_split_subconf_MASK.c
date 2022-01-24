#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (struct mp_log*,TYPE_1__,char*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct mp_log *log, bstr optname, bstr *str,
                         bstr *out_name, bstr *out_val)
{
    bstr p = *str;
    bstr subparam = {0};
    bstr subopt;
    int r = FUNC1(log, optname, ":=,\\%\"'[]", &p, &subopt);
    if (r < 0)
        return r;
    if (FUNC0(&p, "=")) {
        r = FUNC1(log, subopt, ":=,\\%\"'[]", &p, &subparam);
        if (r < 0)
            return r;
    }
    *str = p;
    *out_name = subopt;
    *out_val = subparam;
    return 0;
}