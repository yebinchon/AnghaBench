#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENGINE_F_ENGINE_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_engine_lock_init ; 
 int /*<<< orphan*/  engine_lock_init ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_engine_lock ; 

int FUNC5(ENGINE *e)
{
    int ret;
    if (e == NULL) {
        FUNC2(ENGINE_F_ENGINE_INIT, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if (!FUNC3(&engine_lock_init, do_engine_lock_init)) {
        FUNC2(ENGINE_F_ENGINE_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC1(global_engine_lock);
    ret = FUNC4(e);
    FUNC0(global_engine_lock);
    return ret;
}