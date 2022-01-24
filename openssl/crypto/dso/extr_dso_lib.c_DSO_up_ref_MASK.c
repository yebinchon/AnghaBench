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
typedef  TYPE_1__ DSO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSO_F_DSO_UP_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 

int FUNC4(DSO *dso)
{
    int i;

    if (dso == NULL) {
        FUNC1(DSO_F_DSO_UP_REF, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    if (FUNC0(&dso->references, &i, dso->lock) <= 0)
        return 0;

    FUNC3("DSO", dso);
    FUNC2(i < 2);
    return ((i > 1) ? 1 : 0);
}