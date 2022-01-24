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
typedef  int /*<<< orphan*/  smart_string ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 short FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,char**,size_t*) ; 

int FUNC4(smart_string *str, char *key, size_t len, RedisSock *redis_sock, short *slot) {
    int valfree, retval;

    valfree = FUNC3(redis_sock, &key, &len);
    if (slot) *slot = FUNC0(key, len);
    retval = FUNC2(str, key, len);
    if (valfree) FUNC1(key);

    return retval;
}