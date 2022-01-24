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
struct TYPE_8__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_object ;
typedef  int zend_long ;
struct TYPE_9__ {scalar_t__ nApplyCount; scalar_t__ fptr_offset_set; } ;
typedef  TYPE_2__ spl_array_object ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
#define  IS_DOUBLE 135 
#define  IS_FALSE 134 
#define  IS_LONG 133 
#define  IS_NULL 132 
#define  IS_REFERENCE 131 
#define  IS_RESOURCE 130 
#define  IS_STRING 129 
#define  IS_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(int check_inherited, zend_object *object, zval *offset, zval *value) /* {{{ */
{
	spl_array_object *intern = FUNC9(object);
	zend_long index;
	HashTable *ht;

	if (check_inherited && intern->fptr_offset_set) {
		zval tmp;

		if (!offset) {
			FUNC2(&tmp);
			offset = &tmp;
		} else {
			FUNC0(offset);
		}
		FUNC11(object, object->ce, &intern->fptr_offset_set, "offsetSet", NULL, offset, value);
		FUNC16(offset);
		return;
	}

	if (intern->nApplyCount > 0) {
		FUNC12(E_WARNING, "Modification of ArrayObject during sorting is prohibited");
		return;
	}

	FUNC7(value);
	if (!offset) {
		ht = FUNC10(intern);
		FUNC14(ht, value);
		return;
	}

try_again:
	switch (FUNC8(offset)) {
		case IS_STRING:
			ht = FUNC10(intern);
			FUNC15(ht, FUNC6(offset), value);
			return;
		case IS_DOUBLE:
			index = (zend_long)FUNC3(offset);
			goto num_index;
		case IS_RESOURCE:
			index = FUNC5(offset);
			goto num_index;
		case IS_FALSE:
			index = 0;
			goto num_index;
		case IS_TRUE:
			index = 1;
			goto num_index;
		case IS_LONG:
			index = FUNC4(offset);
num_index:
			ht = FUNC10(intern);
			FUNC13(ht, index, value);
			return;
		case IS_NULL:
			ht = FUNC10(intern);
			FUNC14(ht, value);
			return;
		case IS_REFERENCE:
			FUNC1(offset);
			goto try_again;
		default:
			FUNC12(E_WARNING, "Illegal offset type");
			FUNC16(value);
			return;
	}
}