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
 int UNSERIALIZE_ALL ; 
 int UNSERIALIZE_KEYS ; 
 int UNSERIALIZE_VALS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 

void
FUNC6(RedisSock *redis_sock, zval *z_tab, int count,
                       int unserialize)
{
    zval z_unpacked;
    char *line;
    int i, len;

    for (i = 0; i < count; ++i) {
        if ((line = FUNC4(redis_sock, &len)) == NULL) {
            FUNC0(z_tab, 0);
            continue;
        }

        /* We will attempt unserialization, if we're unserializing everything,
         * or if we're unserializing keys and we're on a key, or we're
         * unserializing values and we're on a value! */
        int unwrap = (
            (unserialize == UNSERIALIZE_ALL) ||
            (unserialize == UNSERIALIZE_KEYS && i % 2 == 0) ||
            (unserialize == UNSERIALIZE_VALS && i % 2 != 0)
        );

        if (unwrap && FUNC5(redis_sock, line, len, &z_unpacked)) {
            FUNC2(z_tab, &z_unpacked);
        } else {
            FUNC1(z_tab, line, len);
        }
        FUNC3(line);
    }
}