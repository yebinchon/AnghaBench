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
typedef  int zend_bool ;
struct TYPE_2__ {int /*<<< orphan*/  function_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* redis_ce ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool
FUNC4(const char *key, int key_len, zval *z_to, long ttl) {

    zval z_fun_expire, z_ret, z_args[2];

    if (ttl > 0)
    {
        /* run EXPIRE on target */
        FUNC1(&z_fun_expire, "EXPIRE", 6);
        FUNC1(&z_args[0], key, key_len);
        FUNC0(&z_args[1], ttl);
        FUNC2(&redis_ce->function_table, z_to, &z_fun_expire, &z_ret, 2, z_args);
        FUNC3(&z_fun_expire);
        FUNC3(&z_args[0]);
        FUNC3(&z_ret);
    }

    return 1;
}