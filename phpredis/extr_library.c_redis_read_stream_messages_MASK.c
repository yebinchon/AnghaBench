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
 int /*<<< orphan*/  SCORE_DECODE_NONE ; 
 int /*<<< orphan*/  UNSERIALIZE_VALS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int*) ; 

int
FUNC7(RedisSock *redis_sock, int count, zval *z_ret
                          )
{
    zval z_message;
    int i, mhdr, fields;
    char *id = NULL;
    int idlen;

    /* Iterate over each message */
    for (i = 0; i < count; i++) {
        /* Consume inner multi-bulk header, message ID itself and finaly
         * the multi-bulk header for field and values */
        if ((FUNC4(redis_sock, &mhdr) < 0 || mhdr != 2) ||
            ((id = FUNC6(redis_sock, &idlen)) == NULL) ||
            (FUNC4(redis_sock, &fields) < 0 || fields % 2 != 0))
        {
            if (id) FUNC3(id);
            return -1;
        }

        FUNC1(&z_message);

        FUNC5(redis_sock, &z_message, fields, UNSERIALIZE_VALS);
        FUNC2(redis_sock, &z_message, SCORE_DECODE_NONE);
        FUNC0(z_ret, id, idlen, &z_message);
        FUNC3(id);
    }

    return 0;
}