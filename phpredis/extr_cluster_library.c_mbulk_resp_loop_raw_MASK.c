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
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int*) ; 

int FUNC3(RedisSock *redis_sock, zval *z_result,
                        long long count, void *ctx)
{
    char *line;
    int line_len;

    // Iterate over the number we have
    while (count--) {
        // Read the line, which should never come back null
        line = FUNC2(redis_sock, &line_len);
        if (line == NULL) return FAILURE;

        // Add to our result array
        FUNC0(z_result, line, line_len);
        FUNC1(line);
    }

    // Success!
    return SUCCESS;
}