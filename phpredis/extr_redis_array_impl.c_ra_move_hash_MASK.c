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
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int /*<<< orphan*/ *,long) ; 
 TYPE_1__* redis_ce ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool
FUNC5(const char *key, int key_len, zval *z_from, zval *z_to, long ttl) {
    zval z_fun_hgetall, z_fun_hmset, z_ret_dest, z_args[2];

    /* run HGETALL on source */
    FUNC0(&z_args[0], key, key_len);
    FUNC0(&z_fun_hgetall, "HGETALL", 7);
    FUNC2(&redis_ce->function_table, z_from, &z_fun_hgetall, &z_args[1], 1, z_args);
    FUNC4(&z_fun_hgetall);

    if (FUNC1(z_args[1]) != IS_ARRAY) { /* key not found or replaced */
        /* TODO: report? */
        FUNC4(&z_args[1]);
        FUNC4(&z_args[0]);
        return 0;
    }

    /* run HMSET on target */
    FUNC0(&z_fun_hmset, "HMSET", 5);
    FUNC2(&redis_ce->function_table, z_to, &z_fun_hmset, &z_ret_dest, 2, z_args);
    FUNC4(&z_fun_hmset);
    FUNC4(&z_ret_dest);

    /* Expire if needed */
    FUNC3(key, key_len, z_to, ttl);

    /* cleanup */
    FUNC4(&z_args[1]);
    FUNC4(&z_args[0]);

    return 1;
}