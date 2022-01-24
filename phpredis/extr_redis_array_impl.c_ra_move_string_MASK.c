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
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* redis_ce ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool
FUNC7(const char *key, int key_len, zval *z_from, zval *z_to, long ttl) {

    zval z_fun_get, z_fun_set, z_ret, z_args[3];

    /* run GET on source */
    FUNC1(&z_fun_get, "GET", 3);
    FUNC1(&z_args[0], key, key_len);
    FUNC5(&redis_ce->function_table, z_from, &z_fun_get, &z_ret, 1, z_args);
    FUNC6(&z_fun_get);

    if(FUNC4(z_ret) != IS_STRING) { /* key not found or replaced */
        /* TODO: report? */
        FUNC6(&z_args[0]);
        FUNC6(&z_ret);
        return 0;
    }

    /* run SET on target */
    if (ttl > 0) {
        FUNC1(&z_fun_set, "SETEX", 5);
        FUNC0(&z_args[1], ttl);
        FUNC1(&z_args[2], FUNC3(z_ret), FUNC2(z_ret)); /* copy z_ret to arg 1 */
        FUNC6(&z_ret); /* free memory from our previous call */
        FUNC5(&redis_ce->function_table, z_to, &z_fun_set, &z_ret, 3, z_args);
        /* cleanup */
        FUNC6(&z_args[2]);
    } else {
        FUNC1(&z_fun_set, "SET", 3);
        FUNC1(&z_args[1], FUNC3(z_ret), FUNC2(z_ret)); /* copy z_ret to arg 1 */
        FUNC6(&z_ret); /* free memory from our previous return value */
        FUNC5(&redis_ce->function_table, z_to, &z_fun_set, &z_ret, 2, z_args);
        /* cleanup */
        FUNC6(&z_args[1]);
    }
    FUNC6(&z_fun_set);
    FUNC6(&z_args[0]);
    FUNC6(&z_ret);

    return 1;
}