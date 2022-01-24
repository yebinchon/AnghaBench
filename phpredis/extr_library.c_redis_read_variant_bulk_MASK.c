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
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 

int
FUNC4(RedisSock *redis_sock, int size, zval *z_ret
                       )
{
    // Attempt to read the bulk reply
    char *bulk_resp = FUNC3(redis_sock, size);

    /* Set our reply to FALSE on failure, and the string on success */
    if(bulk_resp == NULL) {
        FUNC0(z_ret);
        return -1;
    }
    FUNC1(z_ret, bulk_resp, size);
    FUNC2(bulk_resp);
    return 0;
}