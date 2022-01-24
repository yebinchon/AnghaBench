#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {int /*<<< orphan*/  z_dist; } ;
typedef  TYPE_1__ RedisArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_ERROR ; 
 scalar_t__ IS_LONG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  function_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(RedisArray *ra, const char *key, int key_len)
{
    int ret;
    zval z_ret, z_argv;

    /* check that we can call the extractor function */
    if (!FUNC7(&ra->z_dist, NULL, 0, NULL, NULL, NULL)) {
        FUNC5(NULL, E_ERROR, "Could not call distributor function");
        return -1;
    }

    FUNC1(&z_ret);
    /* call extraction function */
    FUNC2(&z_argv, key, key_len);
    FUNC6(FUNC0(function_table), NULL, &ra->z_dist, &z_ret, 1, &z_argv);

    ret = (FUNC4(z_ret) == IS_LONG) ? FUNC3(z_ret) : -1;

    FUNC8(&z_argv);
    FUNC8(&z_ret);
    return ret;
}