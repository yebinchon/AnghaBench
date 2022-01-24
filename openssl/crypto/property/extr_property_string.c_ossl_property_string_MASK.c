#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* s; int /*<<< orphan*/  idx; } ;
typedef  int /*<<< orphan*/  PROP_TABLE ;
typedef  TYPE_1__ PROPERTY_STRING ;
typedef  int /*<<< orphan*/  OSSL_PROPERTY_IDX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static OSSL_PROPERTY_IDX FUNC5(PROP_TABLE *t,
                                              OSSL_PROPERTY_IDX *pidx,
                                              const char *s)
{
    PROPERTY_STRING p, *ps, *ps_new;

    p.s = s;
    ps = FUNC2(t, &p);
    if (ps == NULL && pidx != NULL)
        if ((ps_new = FUNC3(s, pidx)) != NULL) {
            FUNC1(t, ps_new);
            if (FUNC0(t)) {
                FUNC4(ps_new);
                return 0;
            }
            ps = ps_new;
        }
    return ps != NULL ? ps->idx : 0;
}