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
typedef  int /*<<< orphan*/  zend_ulong ;
struct TYPE_3__ {int /*<<< orphan*/ ** master; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ redisCluster ;
typedef  int /*<<< orphan*/  clusterKeyVal ;
typedef  int /*<<< orphan*/  clusterDistList ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,size_t,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 short FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char**,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(redisCluster *c, HashTable *ht, char *key,
                          size_t key_len, clusterKeyVal **kv)
{
    int key_free;
    short slot;
    clusterDistList *dl;
    clusterKeyVal *retptr;

    // Prefix our key and hash it
    key_free = FUNC4(c->flags, &key, &key_len);
    slot = FUNC2(key, key_len);

    // We can't do this if we don't fully understand the keyspace
    if (c->master[slot] == NULL) {
        if (key_free) FUNC3(key);
        return FAILURE;
    }

    // Look for this slot
    if ((dl = FUNC5(ht, (zend_ulong)slot)) == NULL) {
        dl = FUNC1();
        FUNC6(ht, (zend_ulong)slot, dl);
    }

    // Now actually add this key
    retptr = FUNC0(dl, key, key_len, key_free);

    // Push our return pointer if requested
    if (kv) *kv = retptr;

    return SUCCESS;
}