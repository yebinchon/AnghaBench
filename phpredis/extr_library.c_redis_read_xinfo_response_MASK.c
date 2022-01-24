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
typedef  int REDIS_REPLY_TYPE ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
#define  TYPE_BULK 130 
#define  TYPE_INT 129 
#define  TYPE_MULTIBULK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,long*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,long) ; 
 int FUNC8 (char**,int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(RedisSock *redis_sock, zval *z_ret, int elements)
{
    zval zv;
    int i, len;
    char *key = NULL, *data;
    REDIS_REPLY_TYPE type;
    long li;

    for (i = 0; i < elements; ++i) {
        if (FUNC6(redis_sock, &type, &li) < 0) {
            goto failure;
        }
        switch (type) {
        case TYPE_BULK:
            if ((data = FUNC7(redis_sock, li)) == NULL) {
                goto failure;
            } else if (key) {
                FUNC1(z_ret, key, len, data, li);
                FUNC5(data);
                FUNC5(key);
                key = NULL;
            } else {
                key = data;
                len = li;
            }
            break;
        case TYPE_INT:
            if (key) {
                FUNC0(z_ret, key, len, li);
                FUNC5(key);
                key = NULL;
            } else {
                len = FUNC8(&key, 0, "%ld", li);
            }
            break;
        case TYPE_MULTIBULK:
            FUNC4(&zv);
            if (FUNC10(redis_sock, &zv, li) != SUCCESS) {
                FUNC9(&zv);
                goto failure;
            }
            if (key) {
                FUNC2(z_ret, key, len, &zv);
                FUNC5(key);
                key = NULL;
            } else {
                FUNC3(z_ret, &zv);
            }
            break;
        default:
            goto failure;
        }
    }

    return SUCCESS;

failure:
    if (key) FUNC5(key);
    return FAILURE;
}