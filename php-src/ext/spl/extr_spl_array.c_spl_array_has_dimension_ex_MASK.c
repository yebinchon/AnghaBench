#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_9__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_object ;
typedef  int zend_long ;
typedef  int zend_bool ;
struct TYPE_10__ {scalar_t__ fptr_offset_get; scalar_t__ fptr_offset_has; } ;
typedef  TYPE_2__ spl_array_object ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  BP_VAR_R ; 
 int /*<<< orphan*/  E_WARNING ; 
#define  IS_DOUBLE 134 
#define  IS_FALSE 133 
#define  IS_LONG 132 
 scalar_t__ IS_NULL ; 
#define  IS_REFERENCE 131 
#define  IS_RESOURCE 130 
#define  IS_STRING 129 
#define  IS_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC9 (int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(int check_inherited, zend_object *object, zval *offset, int check_empty) /* {{{ */
{
	spl_array_object *intern = FUNC7(object);
	zend_long index;
	zval rv, *value = NULL, *tmp;

	if (check_inherited && intern->fptr_offset_has) {
		FUNC0(offset);
		FUNC10(object, object->ce, &intern->fptr_offset_has, "offsetExists", &rv, offset);
		FUNC15(offset);

		if (FUNC13(&rv)) {
			FUNC15(&rv);
			if (check_empty != 1) {
				return 1;
			} else if (intern->fptr_offset_get) {
				value = FUNC9(1, object, offset, BP_VAR_R, &rv);
			}
		} else {
			FUNC15(&rv);
			return 0;
		}
	}

	if (!value) {
		HashTable *ht = FUNC8(intern);

try_again:
		switch (FUNC6(offset)) {
			case IS_STRING:
				if ((tmp = FUNC14(ht, FUNC5(offset))) != NULL) {
					if (check_empty == 2) {
						return 1;
					}
				} else {
					return 0;
				}
				break;

			case IS_DOUBLE:
				index = (zend_long)FUNC2(offset);
				goto num_index;
			case IS_RESOURCE:
				index = FUNC4(offset);
				goto num_index;
			case IS_FALSE:
				index = 0;
				goto num_index;
			case IS_TRUE:
				index = 1;
				goto num_index;
			case IS_LONG:
				index = FUNC3(offset);
num_index:
				if ((tmp = FUNC12(ht, index)) != NULL) {
					if (check_empty == 2) {
						return 1;
					}
				} else {
					return 0;
				}
				break;
			case IS_REFERENCE:
				FUNC1(offset);
				goto try_again;
			default:
				FUNC11(E_WARNING, "Illegal offset type");
				return 0;
		}

		if (check_empty && check_inherited && intern->fptr_offset_get) {
			value = FUNC9(1, object, offset, BP_VAR_R, &rv);
		} else {
			value = tmp;
		}
	}

	{
		zend_bool result = check_empty ? FUNC13(value) : FUNC6(value) != IS_NULL;
		if (value == &rv) {
			FUNC15(&rv);
		}
		return result;
	}
}