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
struct TYPE_5__ {int references; int /*<<< orphan*/ * lock; } ;
typedef  TYPE_1__ NISTP521_PRE_COMP ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EC_F_NISTP521_PRE_COMP_NEW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 

__attribute__((used)) static NISTP521_PRE_COMP *FUNC4(void)
{
    NISTP521_PRE_COMP *ret = FUNC3(sizeof(*ret));

    if (ret == NULL) {
        FUNC1(EC_F_NISTP521_PRE_COMP_NEW, ERR_R_MALLOC_FAILURE);
        return ret;
    }

    ret->references = 1;

    ret->lock = FUNC0();
    if (ret->lock == NULL) {
        FUNC1(EC_F_NISTP521_PRE_COMP_NEW, ERR_R_MALLOC_FAILURE);
        FUNC2(ret);
        return NULL;
    }
    return ret;
}