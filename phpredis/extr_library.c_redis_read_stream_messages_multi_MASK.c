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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(RedisSock *redis_sock, int count, zval *z_streams
                                )
{
    zval z_messages;
    int i, shdr, messages;
    char *id = NULL;
    int idlen;

    for (i = 0; i < count; i++) {
        if ((FUNC3(redis_sock, &shdr) < 0 || shdr != 2) ||
            (id = FUNC5(redis_sock, &idlen)) == NULL ||
            FUNC3(redis_sock, &messages) < 0)
        {
            if (id) FUNC2(id);
            return -1;
        }

        FUNC1(&z_messages);

        if (FUNC4(redis_sock, messages, &z_messages) < 0)
            goto failure;

        FUNC0(z_streams, id, idlen, &z_messages);
        FUNC2(id);
    }

    return 0;
failure:
    FUNC2(id);
    FUNC6(&z_messages);
    return -1;
}