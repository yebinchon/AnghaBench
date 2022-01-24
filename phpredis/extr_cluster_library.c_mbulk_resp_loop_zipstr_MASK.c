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
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 

int FUNC5(RedisSock *redis_sock, zval *z_result,
                           long long count, void *ctx)
{
    char *line, *key = NULL;
    int line_len, key_len = 0;
    long long idx = 0;

    // Our count wil need to be divisible by 2
    if (count % 2 != 0) {
        return -1;
    }

    // Iterate through our elements
    while (count--) {
        // Grab our line, bomb out on failure
        line = FUNC3(redis_sock, &line_len);
        if (!line) return -1;

        if (idx++ % 2 == 0) {
            // Save our key and length
            key = line;
            key_len = line_len;
        } else {
            /* Attempt unpacking */
            zval z_unpacked;
            if (FUNC4(redis_sock, line, line_len, &z_unpacked)) {
                FUNC1(z_result, key, &z_unpacked);
            } else {
                FUNC0(z_result, key, key_len, line, line_len);
            }

            FUNC2(line);
            FUNC2(key);
        }
    }

    return SUCCESS;
}