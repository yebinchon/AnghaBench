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
typedef  scalar_t__ REDIS_REPLY_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  SCORE_DECODE_NONE ; 
 scalar_t__ TYPE_BULK ; 
 scalar_t__ TYPE_MULTIBULK ; 
 int /*<<< orphan*/  UNSERIALIZE_VALS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__*,long*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC10(RedisSock *redis_sock, int count, zval *rv) {
    zval z_msg;
    REDIS_REPLY_TYPE type;
    char *id = NULL;
    int i, fields, idlen;
    long li;

    for (i = 0; i < count; i++) {
        /* Consume inner reply type */
        if (FUNC7(redis_sock, &type, &li) < 0 ||
            (type != TYPE_BULK && type != TYPE_MULTIBULK) ||
            (type == TYPE_BULK && li <= 0)) return -1;

        /* TYPE_BULK is the JUSTID variant, otherwise it's standard xclaim response */
        if (type == TYPE_BULK) {
            if ((id = FUNC9(redis_sock, (size_t)li)) == NULL)
                return -1;

            FUNC1(rv, id, li);
            FUNC4(id);
        } else {
            if ((li != 2 || (id = FUNC8(redis_sock, &idlen)) == NULL) ||
                (FUNC5(redis_sock, &fields) < 0 || fields % 2 != 0))
            {
                if (id) FUNC4(id);
                return -1;
            }

            FUNC2(&z_msg);

            FUNC6(redis_sock, &z_msg, fields, UNSERIALIZE_VALS);
            FUNC3(redis_sock, &z_msg, SCORE_DECODE_NONE);
            FUNC0(rv, id, idlen, &z_msg);
            FUNC4(id);
        }
    }

    return 0;
}