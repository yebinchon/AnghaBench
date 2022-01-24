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
typedef  char zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 

int FUNC11(RedisSock *redis_sock, zval *z_result,
                          long long count, void *ctx)
{
    char *line;
    int line_len,i = 0;
    zval *z_keys = ctx;

    // Loop while we've got replies
    while (count--) {
        zend_string *zstr = FUNC10(&z_keys[i]);
        line = FUNC6(redis_sock, &line_len);

        if (line != NULL) {
            zval z_unpacked;
            if (FUNC7(redis_sock, line, line_len, &z_unpacked)) {
                FUNC4(z_result, FUNC1(zstr), FUNC0(zstr), &z_unpacked);
            } else {
                FUNC3(z_result, FUNC1(zstr), FUNC0(zstr), line, line_len);
            }
            FUNC5(line);
        } else {
            FUNC2(z_result, FUNC1(zstr), FUNC0(zstr), 0);
        }

        // Clean up key context
        FUNC8(zstr);
        FUNC9(&z_keys[i]);

        // Move to the next key
        i++;
    }

    // Clean up our keys overall
    FUNC5(z_keys);

    // Success!
    return SUCCESS;
}