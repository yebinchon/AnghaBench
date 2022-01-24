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
typedef  int zend_prop_purpose ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int zend_bool ;
struct TYPE_4__ {int ar_flags; } ;
typedef  TYPE_1__ spl_array_object ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SPL_ARRAY_STD_PROP_LIST ; 
#define  ZEND_PROP_PURPOSE_ARRAY_CAST 130 
#define  ZEND_PROP_PURPOSE_JSON 129 
#define  ZEND_PROP_PURPOSE_VAR_EXPORT 128 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HashTable *FUNC5(zend_object *object, zend_prop_purpose purpose) /* {{{ */
{
	spl_array_object *intern = FUNC1(object);
	HashTable *ht;
	zend_bool dup;

	if (intern->ar_flags & SPL_ARRAY_STD_PROP_LIST) {
		return FUNC4(object, purpose);
	}

	/* We are supposed to be the only owner of the internal hashtable.
	 * The "dup" flag decides whether this is a "long-term" use where
	 * we need to duplicate, or a "temporary" one, where we can expect
	 * that no operations on the ArrayObject will be performed in the
	 * meantime. */
	switch (purpose) {
		case ZEND_PROP_PURPOSE_ARRAY_CAST:
			dup = 1;
			break;
		case ZEND_PROP_PURPOSE_VAR_EXPORT:
		case ZEND_PROP_PURPOSE_JSON:
			dup = 0;
			break;
		default:
			return FUNC4(object, purpose);
	}

	ht = FUNC2(intern);
	if (dup) {
		ht = FUNC3(ht);
	} else {
		FUNC0(ht);
	}
	return ht;
}