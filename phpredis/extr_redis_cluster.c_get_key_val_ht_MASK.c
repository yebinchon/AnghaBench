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
typedef  scalar_t__ zend_ulong ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ redisCluster ;
struct TYPE_6__ {int /*<<< orphan*/  val_len; int /*<<< orphan*/  val; int /*<<< orphan*/  val_free; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  slot; int /*<<< orphan*/  key_free; int /*<<< orphan*/  kbuf; } ;
typedef  TYPE_2__ clusterKeyValHT ;
typedef  int /*<<< orphan*/  HashTable ;
typedef  int /*<<< orphan*/  HashPosition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  HASH_KEY_IS_LONG 129 
#define  HASH_KEY_IS_STRING 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,long) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(redisCluster *c, HashTable *ht, HashPosition *ptr,
                          clusterKeyValHT *kv)
{
    zval *z_val;
    zend_ulong idx;

    // Grab the key, convert it to a string using provided kbuf buffer if it's
    // a LONG style key
    zend_string *zkey;
    switch (FUNC8(ht, &zkey, &idx, ptr)) {
        case HASH_KEY_IS_STRING:
            kv->key_len = FUNC1(zkey);
            kv->key = FUNC2(zkey);
            break;
        case HASH_KEY_IS_LONG:
            kv->key_len = FUNC6(kv->kbuf,sizeof(kv->kbuf),"%ld",(long)idx);
            kv->key     = kv->kbuf;
            break;
        default:
            FUNC0("Internal Zend HashTable error", 0);
            return -1;
    }

    // Prefix our key if we need to, set the slot
    kv->key_free = FUNC4(c->flags, &(kv->key), &(kv->key_len));
    kv->slot     = FUNC3(kv->key, kv->key_len);

    // Now grab our value
    if ((z_val = FUNC7(ht, ptr)) == NULL) {
        FUNC0("Internal Zend HashTable error", 0);
        return -1;
    }

    // Serialize our value if required
    kv->val_free = FUNC5(c->flags,z_val,&(kv->val),&(kv->val_len));

    // Success
    return 0;
}