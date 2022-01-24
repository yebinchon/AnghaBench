#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_object_get_properties_t ;
typedef  int zend_long ;
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {TYPE_1__* ce; } ;
struct TYPE_9__ {int ar_flags; scalar_t__ ht_iter; int /*<<< orphan*/  array; TYPE_2__ std; } ;
typedef  TYPE_3__ spl_array_object ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_OBJECT ; 
 int SPL_ARRAY_INT_MASK ; 
 int SPL_ARRAY_IS_SELF ; 
 int SPL_ARRAY_USE_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  get_properties ; 
 int /*<<< orphan*/  spl_ce_InvalidArgumentException ; 
 int /*<<< orphan*/  spl_handler_ArrayIterator ; 
 int /*<<< orphan*/  spl_handler_ArrayObject ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ zend_std_get_properties ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(zval *object, spl_array_object *intern, zval *array, zend_long ar_flags, int just_array) {
	if (FUNC11(array) != IS_OBJECT && FUNC11(array) != IS_ARRAY) {
		FUNC13(spl_ce_InvalidArgumentException, "Passed variable is not an array or object", 0);
		return;
	}

	if (FUNC11(array) == IS_ARRAY) {
		FUNC15(&intern->array);
		if (FUNC9(array) == 1) {
			FUNC2(&intern->array, array);
		} else {
			//??? TODO: try to avoid array duplication
			FUNC1(&intern->array, FUNC12(FUNC4(array)));
		}
	} else {
		if (FUNC7(array) == &spl_handler_ArrayObject || FUNC7(array) == &spl_handler_ArrayIterator) {
			FUNC15(&intern->array);
			if (just_array)	{
				spl_array_object *other = FUNC10(array);
				ar_flags = other->ar_flags & ~SPL_ARRAY_INT_MASK;
			}
			if (FUNC8(object) == FUNC8(array)) {
				ar_flags |= SPL_ARRAY_IS_SELF;
				FUNC3(&intern->array);
			} else {
				ar_flags |= SPL_ARRAY_USE_OTHER;
				FUNC2(&intern->array, array);
			}
		} else {
			zend_object_get_properties_t handler = FUNC6(array, get_properties);
			if (handler != zend_std_get_properties) {
				FUNC14(spl_ce_InvalidArgumentException, 0,
					"Overloaded object of type %s is not compatible with %s",
					FUNC0(FUNC5(array)->name), FUNC0(intern->std.ce->name));
				return;
			}
			FUNC15(&intern->array);
			FUNC2(&intern->array, array);
		}
	}

	intern->ar_flags &= ~SPL_ARRAY_IS_SELF & ~SPL_ARRAY_USE_OTHER;
	intern->ar_flags |= ar_flags;
	intern->ht_iter = (uint32_t)-1;
}