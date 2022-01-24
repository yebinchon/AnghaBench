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
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {int ar_flags; scalar_t__ fptr_offset_get; } ;
typedef  TYPE_1__ spl_array_object ;

/* Variables and functions */
 int SPL_ARRAY_ARRAY_AS_PROPS ; 
 int /*<<< orphan*/  ZEND_PROPERTY_EXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zval *FUNC5(zend_object *object, zend_string *name, int type, void **cache_slot) /* {{{ */
{
	spl_array_object *intern = FUNC1(object);

	if ((intern->ar_flags & SPL_ARRAY_ARRAY_AS_PROPS) != 0
		&& !FUNC4(object, name, ZEND_PROPERTY_EXISTS, NULL)) {
		/* If object has offsetGet() overridden, then fallback to read_property,
		 * which will call offsetGet(). */
		zval member;
		if (intern->fptr_offset_get) {
			return NULL;
		}
		FUNC0(&member, name);
		return FUNC2(1, intern, &member, type);
	}
	return FUNC3(object, name, type, cache_slot);
}