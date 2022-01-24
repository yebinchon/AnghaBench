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
typedef  int /*<<< orphan*/  inbuf ;
typedef  int /*<<< orphan*/  RedisSock ;
typedef  scalar_t__ REDIS_REPLY_TYPE ;

/* Variables and functions */
 scalar_t__ TYPE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static int
FUNC6(RedisSock *redis_sock, REDIS_REPLY_TYPE reply_type,
                        int as_string, zval *z_ret)
{
    // Buffer to read our single line reply
    char inbuf[4096];
    size_t len;

    /* Attempt to read our single line reply */
    if(FUNC4(redis_sock, inbuf, sizeof(inbuf), &len) < 0) {
        return -1;
    }

    /* Throw exception on SYNC error otherwise just set error string */
    if(reply_type == TYPE_ERR) {
        FUNC5(redis_sock, inbuf, len);
        FUNC3(redis_sock);
        FUNC0(z_ret);
    } else if (as_string) {
        FUNC1(z_ret, inbuf, len);
    } else {
        FUNC2(z_ret);
    }

    return 0;
}