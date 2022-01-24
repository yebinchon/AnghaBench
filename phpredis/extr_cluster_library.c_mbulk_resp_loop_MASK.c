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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 

int FUNC6(RedisSock *redis_sock, zval *z_result,
                    long long count, void *ctx)
{
    char *line;
    int line_len;

    /* Iterate over the lines we have to process */
    while (count--) {
        /* Read our line */
        line = FUNC4(redis_sock, &line_len);

        if (line != NULL) {
            zval z_unpacked;
            if (FUNC5(redis_sock, line, line_len, &z_unpacked)) {
                FUNC2(z_result, &z_unpacked);
            } else {
                FUNC1(z_result, line, line_len);
            }
            FUNC3(line);
        } else {
            if (line) FUNC3(line);
            FUNC0(z_result, 0);
        }
    }

    return SUCCESS;
}