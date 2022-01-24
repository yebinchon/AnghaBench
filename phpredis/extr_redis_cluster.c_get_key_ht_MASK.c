#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ redisCluster ;
struct TYPE_6__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  slot; int /*<<< orphan*/  key_free; } ;
typedef  TYPE_2__ clusterKeyValHT ;
typedef  int /*<<< orphan*/  HashTable ;
typedef  int /*<<< orphan*/  HashPosition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(redisCluster *c, HashTable *ht, HashPosition *ptr,
                      clusterKeyValHT *kv)
{
    zval *z_key;

    if ((z_key = FUNC6(ht, ptr)) == NULL) {
        // Shouldn't happen, but check anyway
        FUNC0("Internal Zend HashTable error", 0);
        return -1;
    }

    // Always want to work with strings
    FUNC4(z_key);

    kv->key = FUNC2(z_key);
    kv->key_len = FUNC1(z_key);
    kv->key_free = FUNC5(c->flags, &(kv->key), &(kv->key_len));

    // Hash our key
    kv->slot = FUNC3(kv->key, kv->key_len);

    // Success
    return 0;
}