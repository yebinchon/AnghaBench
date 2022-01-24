#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ redisCluster ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_DOUBLE ; 
 scalar_t__ IS_LONG ; 
 scalar_t__ IS_STRING ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 short FUNC6 (TYPE_1__*,char const*,unsigned short) ; 
 short FUNC7 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,char**,size_t*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static short
FUNC14(redisCluster *c, zval *z_arg)
{
    size_t key_len;
    int key_free;
    zval *z_host, *z_port;
    short slot;
    char *key;
    zend_string *zstr;

    /* If it's a string, treat it as a key.  Otherwise, look for a two
     * element array */
    if (FUNC5(z_arg) ==IS_STRING || FUNC5(z_arg) ==IS_LONG ||
       FUNC5(z_arg) ==IS_DOUBLE)
    {
        /* Allow for any scalar here */
        zstr = FUNC13(z_arg);
        key = FUNC1(zstr);
        key_len = FUNC0(zstr);

        /* Hash it */
        key_free = FUNC10(c->flags, &key, &key_len);
        slot = FUNC7(key, key_len);
        FUNC12(zstr);
        if (key_free) FUNC8(key);
    } else if (FUNC5(z_arg) == IS_ARRAY &&
        (z_host = FUNC11(FUNC2(z_arg), 0)) != NULL &&
        (z_port = FUNC11(FUNC2(z_arg), 1)) != NULL &&
        FUNC5(z_host) == IS_STRING && FUNC5(z_port) == IS_LONG
    ) {
        /* Attempt to find this specific node by host:port */
        slot = FUNC6(c,(const char *)FUNC4(z_host),
            (unsigned short)FUNC3(z_port));

        /* Inform the caller if they've passed bad data */
        if (slot < 0) {
            FUNC9(0, E_WARNING, "Unknown node %s:%ld",
                FUNC4(z_host), FUNC3(z_port));
        }
    } else {
        FUNC9(0, E_WARNING,
            "Direted commands musty be passed a key or [host,port] array");
        return -1;
    }

    return slot;
}