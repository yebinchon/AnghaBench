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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static int
FUNC4(RedisSock *redis_sock, int *nelem)
{
    char line[4096];
    size_t len;

    /* Throws exception on failure */
    if (FUNC2(redis_sock, line, sizeof(line)-1, &len) < 0)
        return -1;

    if (line[0] != '*') {
        if (FUNC0(redis_sock)) {
            if (line[0] == '-') {
                FUNC3(redis_sock, line+1, len-1);
            }
        }
        return -1;
    }

    *nelem = FUNC1(line+1);

    return 0;
}