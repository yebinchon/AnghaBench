#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_9__ {int /*<<< orphan*/  inf; int /*<<< orphan*/  obj; } ;
typedef  TYPE_2__ spl_SplObjectStorageElement ;
struct TYPE_10__ {int flags; int /*<<< orphan*/  pos; int /*<<< orphan*/  storage; } ;
typedef  TYPE_3__ spl_SplObjectStorage ;
struct TYPE_11__ {TYPE_1__* iterator_funcs_ptr; } ;
struct TYPE_8__ {int /*<<< orphan*/  zf_key; int /*<<< orphan*/  zf_current; int /*<<< orphan*/  zf_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  IS_LONG 129 
#define  IS_STRING 128 
 int IS_TRUE ; 
 int MIT_KEYS_ASSOC ; 
 int MIT_NEED_ALL ; 
 int /*<<< orphan*/  RETURN_FALSE ; 
 int SPL_MULTIPLE_ITERATOR_GET_ALL_CURRENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  spl_ce_InvalidArgumentException ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(spl_SplObjectStorage *intern, int get_type, zval *return_value) /* {{{ */
{
	spl_SplObjectStorageElement *element;
	zval                        *it, retval;
	int                          valid = 1, num_elements;

	num_elements = FUNC16(&intern->storage);
	if (num_elements < 1) {
		RETURN_FALSE;
	}

	FUNC11(return_value, num_elements);

	FUNC14(&intern->storage, &intern->pos);
	while ((element = FUNC13(&intern->storage, &intern->pos)) != NULL && !FUNC0(exception)) {
		it = &element->obj;
		FUNC12(FUNC6(it), FUNC5(it), &FUNC5(it)->iterator_funcs_ptr->zf_valid, "valid", &retval);

		if (!FUNC3(retval)) {
			valid = FUNC8(retval) == IS_TRUE;
			FUNC19(&retval);
		} else {
			valid = 0;
		}

		if (valid) {
			if (SPL_MULTIPLE_ITERATOR_GET_ALL_CURRENT == get_type) {
				FUNC12(FUNC6(it), FUNC5(it), &FUNC5(it)->iterator_funcs_ptr->zf_current, "current", &retval);
			} else {
				FUNC12(FUNC6(it), FUNC5(it), &FUNC5(it)->iterator_funcs_ptr->zf_key, "key", &retval);
			}
			if (FUNC3(retval)) {
				FUNC18(spl_ce_RuntimeException, "Failed to call sub iterator method", 0);
				return;
			}
		} else if (intern->flags & MIT_NEED_ALL) {
			if (SPL_MULTIPLE_ITERATOR_GET_ALL_CURRENT == get_type) {
				FUNC18(spl_ce_RuntimeException, "Called current() with non valid sub iterator", 0);
			} else {
				FUNC18(spl_ce_RuntimeException, "Called key() with non valid sub iterator", 0);
			}
			return;
		} else {
			FUNC1(&retval);
		}

		if (intern->flags & MIT_KEYS_ASSOC) {
			switch (FUNC8(element->inf)) {
				case IS_LONG:
					FUNC9(return_value, FUNC4(element->inf), &retval);
					break;
				case IS_STRING:
					FUNC17(FUNC2(return_value), FUNC7(element->inf), &retval);
					break;
				default:
					FUNC19(&retval);
					FUNC18(spl_ce_InvalidArgumentException, "Sub-Iterator is associated with NULL", 0);
					return;
			}
		} else {
			FUNC10(return_value, &retval);
		}

		FUNC15(&intern->storage, &intern->pos);
	}
}