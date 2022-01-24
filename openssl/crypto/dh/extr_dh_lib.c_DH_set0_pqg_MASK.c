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
struct TYPE_3__ {int /*<<< orphan*/  dirty_cnt; int /*<<< orphan*/  length; int /*<<< orphan*/ * g; int /*<<< orphan*/ * q; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(DH *dh, BIGNUM *p, BIGNUM *q, BIGNUM *g)
{
    /* If the fields p and g in d are NULL, the corresponding input
     * parameters MUST be non-NULL.  q may remain NULL.
     */
    if ((dh->p == NULL && p == NULL)
        || (dh->g == NULL && g == NULL))
        return 0;

    if (p != NULL) {
        FUNC0(dh->p);
        dh->p = p;
    }
    if (q != NULL) {
        FUNC0(dh->q);
        dh->q = q;
    }
    if (g != NULL) {
        FUNC0(dh->g);
        dh->g = g;
    }

    if (q != NULL) {
        dh->length = FUNC1(q);
    }

    dh->dirty_cnt++;
    return 1;
}