#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ zend_hash_key ;
typedef  int zend_bool ;
struct TYPE_7__ {scalar_t__ status; } ;
typedef  TYPE_2__ php_dir_entry ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_bool FUNC4(HashTable *target_ht, zval *zv, zend_hash_key *hash_key, void *pData)
{
	php_dir_entry *new_per_dir_entry = FUNC1(zv);
	php_dir_entry *orig_per_dir_entry;

	if ((orig_per_dir_entry = FUNC3(target_ht, hash_key->key)) == NULL) {
		return 1; /* does not exist in dest, copy from source */
	}

	if (new_per_dir_entry->status >= orig_per_dir_entry->status) {
		/* use new entry */
		FUNC2((stderr, "ADDING/OVERWRITING %s (%d vs. %d)\n", FUNC0(hash_key->key), new_per_dir_entry->status, orig_per_dir_entry->status));
		return 1;
	} else {
		return 0;
	}
}