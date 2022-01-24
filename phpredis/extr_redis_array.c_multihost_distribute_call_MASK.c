#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {int /*<<< orphan*/  function_table; } ;
struct TYPE_4__ {int count; int /*<<< orphan*/ * hosts; int /*<<< orphan*/ * redis; } ;
typedef  TYPE_1__ RedisArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* redis_array_ce ; 

__attribute__((used)) static void
FUNC5(RedisArray *ra, zval *return_value, zval *z_fun, int argc, zval *argv)
{
    zval z_tmp;
    int i;

    /* Init our array return */
    FUNC3(return_value);

    /* Iterate our RedisArray nodes */
    for (i = 0; i < ra->count; ++i) {
        /* Call each node in turn */
        FUNC4(&redis_array_ce->function_table, &ra->redis[i], z_fun, &z_tmp, argc, argv);

        /* Add the result for this host */
        FUNC2(return_value, FUNC1(ra->hosts[i]), FUNC0(ra->hosts[i]), &z_tmp);
    }
}