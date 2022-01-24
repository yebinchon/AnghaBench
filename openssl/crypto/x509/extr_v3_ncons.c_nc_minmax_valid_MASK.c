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
struct TYPE_3__ {scalar_t__ minimum; scalar_t__ maximum; } ;
typedef  TYPE_1__ GENERAL_SUBTREE ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(GENERAL_SUBTREE *sub) {
    BIGNUM *bn = NULL;
    int ok = 1;

    if (sub->maximum)
        ok = 0;

    if (sub->minimum) {
        bn = FUNC0(sub->minimum, NULL);
        if (bn == NULL || !FUNC2(bn))
            ok = 0;
        FUNC1(bn);
    }

    return ok;
}