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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(RedisSock *redis_sock, zval *z_result,
                           long long count, void *ctx)
{
    char *line, *key = NULL;
    int line_len, key_len = 0;
    long long idx = 0;

    // Our context will need to be divisible by 2
    if (count %2 != 0) {
        return -1;
    }

    // While we have elements
    while (count--) {
        line = FUNC5(redis_sock, &line_len);
        if (line != NULL) {
            if (idx++ % 2 == 0) {
                key = line;
                key_len = line_len;
            } else {
                zval zv, *z = &zv;
                if (FUNC6(redis_sock,key,key_len, z)) {
                    zend_string *zstr = FUNC9(z);
                    FUNC2(z_result, FUNC1(zstr), FUNC0(zstr), FUNC3(line));
                    FUNC7(zstr);
                    FUNC8(z);
                } else {
                    FUNC2(z_result, key, key_len, FUNC3(line));
                }

                /* Free our key and line */
                FUNC4(key);
                FUNC4(line);
            }
        }
    }

    return SUCCESS;
}