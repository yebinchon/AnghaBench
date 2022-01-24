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
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* redis_ce ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(zval *z_redis, zval *return_value, int keep_all) {

    zval z_fun_exec, z_ret, *zp_tmp;

    /* run EXEC */
    FUNC1(&z_fun_exec, "EXEC", 4);
    FUNC4(&redis_ce->function_table, z_redis, &z_fun_exec, &z_ret, 0, NULL);
    FUNC6(&z_fun_exec);

    /* extract first element of exec array and put into return_value. */
    if(FUNC3(z_ret) == IS_ARRAY) {
        if(return_value) {
                if(keep_all) {
                    zp_tmp = &z_ret;
                    FUNC0(zp_tmp, 1, 0);
                } else if ((zp_tmp = FUNC5(FUNC2(z_ret), 0)) != NULL) {
                    FUNC0(zp_tmp, 1, 0);
                }
        }
    }
    FUNC6(&z_ret);

    /* zval *zptr = &z_ret; */
    /* php_var_dump(&zptr, 0); */
}