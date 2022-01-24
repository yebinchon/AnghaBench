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
typedef  int /*<<< orphan*/  RedisSock ;
typedef  scalar_t__ REDIS_REPLY_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TYPE_ERR ; 
 scalar_t__ TYPE_LINE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*,long*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 

int
FUNC4(RedisSock *redis_sock, char *buffer, size_t buflen,
                            size_t *linelen, int set_err)
{
    REDIS_REPLY_TYPE type;
    long info;

    if (FUNC1(redis_sock, &type, &info) < 0 ||
        (type != TYPE_LINE && type != TYPE_ERR))
    {
        return -1;
    }

    if (FUNC2(redis_sock, buffer, buflen, linelen) < 0) {
        return -1;
    }

    if (set_err && type == TYPE_ERR) {
        if (FUNC0(redis_sock)) {
            FUNC3(redis_sock, buffer, *linelen);
        }
    }

    return type == TYPE_LINE ? 0 : -1;
}