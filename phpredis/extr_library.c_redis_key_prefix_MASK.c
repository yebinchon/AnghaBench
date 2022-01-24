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
struct TYPE_3__ {int /*<<< orphan*/ * prefix; } ;
typedef  TYPE_1__ RedisSock ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

int
FUNC4(RedisSock *redis_sock, char **key, size_t *key_len) {
    int ret_len;
    char *ret;

    if (redis_sock->prefix == NULL) {
        return 0;
    }

    ret_len = FUNC0(redis_sock->prefix) + *key_len;
    ret = FUNC2(1 + ret_len, 1);
    FUNC3(ret, FUNC1(redis_sock->prefix), FUNC0(redis_sock->prefix));
    FUNC3(ret + FUNC0(redis_sock->prefix), *key, *key_len);

    *key = ret;
    *key_len = ret_len;
    return 1;
}