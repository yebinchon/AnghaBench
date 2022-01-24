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
 int /*<<< orphan*/  MULTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 TYPE_1__* redis_ce ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool
FUNC6(const char *key, int key_len, zval *z_from) {

    zval z_fun_del, z_ret, z_args[1];

    /* in a transaction */
    FUNC3(z_from, MULTI);

    /* run DEL on source */
    FUNC0(&z_fun_del, "DEL", 3);
    FUNC0(&z_args[0], key, key_len);
    FUNC1(&redis_ce->function_table, z_from, &z_fun_del, &z_ret, 1, z_args);
    FUNC5(&z_fun_del);
    FUNC5(&z_args[0]);
    FUNC5(&z_ret);

    /* remove key from index */
    FUNC4(z_from, key, key_len);

    /* close transaction */
    FUNC2(z_from, NULL, 0);

    return 1;
}