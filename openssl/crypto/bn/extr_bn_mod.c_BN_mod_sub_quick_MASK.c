#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ neg; } ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ; 

int FUNC2(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
                     const BIGNUM *m)
{
    if (!FUNC1(r, a, b))
        return 0;
    if (r->neg)
        return FUNC0(r, r, m);
    return 1;
}