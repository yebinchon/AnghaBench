#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  smart_string ;
struct TYPE_3__ {scalar_t__ sort; scalar_t__ store; int /*<<< orphan*/ * key; scalar_t__ count; scalar_t__ withhash; scalar_t__ withdist; scalar_t__ withcoord; } ;
typedef  TYPE_1__ geoOptions ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (short*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ SORT_ASC ; 
 scalar_t__ SORT_DESC ; 
 scalar_t__ STORE_COORD ; 
 scalar_t__ STORE_NONE ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,char**,size_t*) ; 

void FUNC8(RedisSock *redis_sock, smart_string *str, short *slot,
                           geoOptions *opt)
{
    char *key;
    size_t keylen;
    int keyfree;

    if (opt->withcoord)
        FUNC1(str, "WITHCOORD");
    if (opt->withdist)
        FUNC1(str, "WITHDIST");
    if (opt->withhash)
        FUNC1(str, "WITHHASH");

    /* Append sort if it's not GEO_NONE */
    if (opt->sort == SORT_ASC) {
        FUNC1(str, "ASC");
    } else if (opt->sort == SORT_DESC) {
        FUNC1(str, "DESC");
    }

    /* Append our count if we've got one */
    if (opt->count) {
        FUNC1(str, "COUNT");
        FUNC6(str, opt->count);
    }

    /* Append store options if we've got them */
    if (opt->store != STORE_NONE && opt->key != NULL) {
        /* Grab string bits and prefix if requested */
        key = FUNC3(opt->key);
        keylen = FUNC2(opt->key);
        keyfree = FUNC7(redis_sock, &key, &keylen);

        if (opt->store == STORE_COORD) {
            FUNC1(str, "STORE");
        } else {
            FUNC1(str, "STOREDIST");
        }

        FUNC5(str, key, keylen);

        FUNC0(slot, key, keylen);
        if (keyfree) FUNC4(key);
    }
}