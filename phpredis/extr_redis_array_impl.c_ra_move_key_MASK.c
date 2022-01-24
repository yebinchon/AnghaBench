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
typedef  scalar_t__ zend_bool ;

/* Variables and functions */
 int /*<<< orphan*/  MULTI ; 
#define  REDIS_HASH 132 
#define  REDIS_LIST 131 
#define  REDIS_SET 130 
#define  REDIS_STRING 129 
#define  REDIS_ZSET 128 
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC6 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC7 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC8 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC9 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long) ; 

void
FUNC10(const char *key, int key_len, zval *z_from, zval *z_to) {

    long res[2] = {0}, type, ttl;
    zend_bool success = 0;
    if (FUNC1(z_from, key, key_len, z_from, res)) {
        type = res[0];
        ttl = res[1];
        /* open transaction on target server */
        FUNC4(z_to, MULTI);
        switch(type) {
            case REDIS_STRING:
                success = FUNC8(key, key_len, z_from, z_to, ttl);
                break;

            case REDIS_SET:
                success = FUNC7(key, key_len, z_from, z_to, ttl);
                break;

            case REDIS_LIST:
                success = FUNC6(key, key_len, z_from, z_to, ttl);
                break;

            case REDIS_ZSET:
                success = FUNC9(key, key_len, z_from, z_to, ttl);
                break;

            case REDIS_HASH:
                success = FUNC5(key, key_len, z_from, z_to, ttl);
                break;

            default:
                /* TODO: report? */
                break;
        }
    }

    if(success) {
        FUNC0(key, key_len, z_from);
        FUNC3(key, key_len, z_to);
    }

    /* close transaction */
    FUNC2(z_to, NULL, 0);
}