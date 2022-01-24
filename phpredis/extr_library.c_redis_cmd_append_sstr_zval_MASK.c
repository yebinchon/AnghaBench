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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  smart_string ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,size_t*) ; 

int FUNC3(smart_string *str, zval *z, RedisSock *redis_sock) {
    char *val;
    size_t vallen;
    int valfree, retval;

    valfree = FUNC2(redis_sock, z, &val, &vallen);
    retval = FUNC1(str, val, vallen);
    if (valfree) FUNC0(val);

    return retval;
}