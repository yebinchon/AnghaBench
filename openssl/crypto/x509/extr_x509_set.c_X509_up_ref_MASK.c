#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  references; } ;
typedef  TYPE_1__ X509 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 

int FUNC3(X509 *x)
{
    int i;

    if (FUNC0(&x->references, &i, x->lock) <= 0)
        return 0;

    FUNC2("X509", x);
    FUNC1(i < 2);
    return ((i > 1) ? 1 : 0);
}