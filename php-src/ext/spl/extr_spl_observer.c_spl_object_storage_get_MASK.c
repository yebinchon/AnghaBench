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
struct TYPE_5__ {int /*<<< orphan*/  h; scalar_t__ key; } ;
typedef  TYPE_1__ zend_hash_key ;
typedef  int /*<<< orphan*/  spl_SplObjectStorageElement ;
struct TYPE_6__ {int /*<<< orphan*/  storage; } ;
typedef  TYPE_2__ spl_SplObjectStorage ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static spl_SplObjectStorageElement* FUNC2(spl_SplObjectStorage *intern, zend_hash_key *key) /* {{{ */
{
	if (key->key) {
		return FUNC0(&intern->storage, key->key);
	} else {
		return FUNC1(&intern->storage, key->h);
	}
}