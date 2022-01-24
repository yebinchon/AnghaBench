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
struct TYPE_3__ {int /*<<< orphan*/ * n; int /*<<< orphan*/ * d; } ;
typedef  TYPE_1__ RSA ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

int FUNC2(const RSA *rsa)
{
    if (rsa->d == NULL || rsa->n == NULL)
        return 0;
    return FUNC0(rsa->d, FUNC1()) >= 0 && FUNC0(rsa->d, rsa->n) < 0;
}