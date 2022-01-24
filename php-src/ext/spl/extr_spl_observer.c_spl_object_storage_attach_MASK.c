#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_17__ {int /*<<< orphan*/  h; scalar_t__ key; } ;
typedef  TYPE_1__ zend_hash_key ;
struct TYPE_18__ {int /*<<< orphan*/  inf; int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ spl_SplObjectStorageElement ;
struct TYPE_19__ {int /*<<< orphan*/  storage; } ;
typedef  TYPE_3__ spl_SplObjectStorage ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

spl_SplObjectStorageElement *FUNC8(spl_SplObjectStorage *intern, zval *obj, zval *inf) /* {{{ */
{
	spl_SplObjectStorageElement *pelement, element;
	zend_hash_key key;
	if (FUNC4(&key, intern, obj) == FAILURE) {
		return NULL;
	}

	pelement = FUNC3(intern, &key);

	if (pelement) {
		FUNC7(&pelement->inf);
		if (inf) {
			FUNC0(&pelement->inf, inf);
		} else {
			FUNC1(&pelement->inf);
		}
		FUNC2(intern, &key);
		return pelement;
	}

	FUNC0(&element.obj, obj);
	if (inf) {
		FUNC0(&element.inf, inf);
	} else {
		FUNC1(&element.inf);
	}
	if (key.key) {
		pelement = FUNC6(&intern->storage, key.key, &element, sizeof(spl_SplObjectStorageElement));
	} else {
		pelement = FUNC5(&intern->storage, key.h, &element, sizeof(spl_SplObjectStorageElement));
	}
	FUNC2(intern, &key);
	return pelement;
}