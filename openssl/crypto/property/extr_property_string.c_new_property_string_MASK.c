#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ idx; int /*<<< orphan*/  body; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ PROPERTY_STRING ;
typedef  scalar_t__ OSSL_PROPERTY_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t const) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static PROPERTY_STRING *FUNC4(const char *s,
                                            OSSL_PROPERTY_IDX *pidx)
{
    const size_t l = FUNC3(s);
    PROPERTY_STRING *ps = FUNC1(sizeof(*ps) + l);

    if (ps != NULL) {
        FUNC2(ps->body, s, l + 1);
        ps->s = ps->body;
        ps->idx = ++*pidx;
        if (ps->idx == 0) {
            FUNC0(ps);
            return NULL;
        }
    }
    return ps;
}