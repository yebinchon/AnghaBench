#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_8__ {int /*<<< orphan*/  h; scalar_t__ key; } ;
typedef  TYPE_1__ zend_hash_key ;
struct TYPE_9__ {int /*<<< orphan*/  storage; } ;
typedef  TYPE_2__ spl_SplObjectStorage ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(spl_SplObjectStorage *intern, zval *obj) /* {{{ */
{
	int ret = FAILURE;
	zend_hash_key key;
	if (FUNC1(&key, intern, obj) == FAILURE) {
		return ret;
	}
	if (key.key) {
		ret = FUNC2(&intern->storage, key.key);
	} else {
		ret = FUNC3(&intern->storage, key.h);
	}
	FUNC0(intern, &key);

	return ret;
}