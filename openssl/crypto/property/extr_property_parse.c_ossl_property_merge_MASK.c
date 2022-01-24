#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int n; TYPE_1__* properties; } ;
struct TYPE_11__ {scalar_t__ name_idx; } ;
typedef  TYPE_1__ PROPERTY_DEFINITION ;
typedef  TYPE_2__ OSSL_PROPERTY_LIST ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__ const*,int) ; 

OSSL_PROPERTY_LIST *FUNC3(const OSSL_PROPERTY_LIST *a,
                                        const OSSL_PROPERTY_LIST *b)
{
    const PROPERTY_DEFINITION *const ap = a->properties;
    const PROPERTY_DEFINITION *const bp = b->properties;
    const PROPERTY_DEFINITION *copy;
    OSSL_PROPERTY_LIST *r;
    int i, j, n;
    const int t = a->n + b->n;

    r = FUNC0(sizeof(*r)
                       + (t == 0 ? 0 : t - 1) * sizeof(r->properties[0]));
    if (r == NULL)
        return NULL;

    for (i = j = n = 0; i < a->n || j < b->n; n++) {
        if (i >= a->n) {
            copy = &bp[j++];
        } else if (j >= b->n) {
            copy = &ap[i++];
        } else if (ap[i].name_idx <= bp[j].name_idx) {
            if (ap[i].name_idx == bp[j].name_idx)
                j++;
            copy = &ap[i++];
        } else {
            copy = &bp[j++];
        }
        FUNC2(r->properties + n, copy, sizeof(r->properties[0]));
    }
    r->n = n;
    if (n != t)
        r = FUNC1(r, sizeof(*r) + (n - 1) * sizeof(r->properties[0]));
    return r;
}