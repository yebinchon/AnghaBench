#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_2__ {int /*<<< orphan*/  function_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* redis_ce ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(zval *z_redis, long multi_value) {

    zval z_fun_multi, z_ret;
    zval z_args[1];

    /* run MULTI */
    FUNC1(&z_fun_multi, "MULTI", 5);
    FUNC0(&z_args[0], multi_value);
    FUNC2(&redis_ce->function_table, z_redis, &z_fun_multi, &z_ret, 1, z_args);
    FUNC3(&z_fun_multi);
    FUNC3(&z_ret);
}