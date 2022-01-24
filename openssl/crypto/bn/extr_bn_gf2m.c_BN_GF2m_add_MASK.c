#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ top; int* d; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,scalar_t__) ; 

int FUNC3(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
    int i;
    const BIGNUM *at, *bt;

    FUNC0(a);
    FUNC0(b);

    if (a->top < b->top) {
        at = b;
        bt = a;
    } else {
        at = a;
        bt = b;
    }

    if (FUNC2(r, at->top) == NULL)
        return 0;

    for (i = 0; i < bt->top; i++) {
        r->d[i] = at->d[i] ^ bt->d[i];
    }
    for (; i < at->top; i++) {
        r->d[i] = at->d[i];
    }

    r->top = at->top;
    FUNC1(r);

    return 1;
}