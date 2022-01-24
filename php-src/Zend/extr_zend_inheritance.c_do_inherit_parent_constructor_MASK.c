#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* constructor; int /*<<< orphan*/  name; int /*<<< orphan*/  __debugInfo; int /*<<< orphan*/  destructor; int /*<<< orphan*/  unserialize; int /*<<< orphan*/  unserialize_func; int /*<<< orphan*/  serialize; int /*<<< orphan*/  serialize_func; int /*<<< orphan*/  clone; int /*<<< orphan*/  __tostring; int /*<<< orphan*/  __callstatic; int /*<<< orphan*/  __call; int /*<<< orphan*/  __isset; int /*<<< orphan*/  __unset; int /*<<< orphan*/  __set; int /*<<< orphan*/  __get; scalar_t__ iterator_funcs_ptr; int /*<<< orphan*/  get_iterator; int /*<<< orphan*/  create_object; struct TYPE_7__* parent; } ;
typedef  TYPE_3__ zend_class_entry ;
struct TYPE_5__ {int fn_flags; int /*<<< orphan*/  function_name; } ;
struct TYPE_6__ {TYPE_1__ common; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  E_ERROR ; 
 scalar_t__ FUNC1 (int) ; 
 int ZEND_ACC_FINAL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(zend_class_entry *ce) /* {{{ */
{
	zend_class_entry *parent = ce->parent;

	FUNC2(parent != NULL);

	/* You cannot change create_object */
	ce->create_object = parent->create_object;

	/* Inherit special functions if needed */
	if (FUNC0(!ce->get_iterator)) {
		ce->get_iterator = parent->get_iterator;
	}
	if (parent->iterator_funcs_ptr) {
		/* Must be initialized through iface->interface_gets_implemented() */
		FUNC2(ce->iterator_funcs_ptr);
	}
	if (FUNC0(!ce->__get)) {
		ce->__get = parent->__get;
	}
	if (FUNC0(!ce->__set)) {
		ce->__set = parent->__set;
	}
	if (FUNC0(!ce->__unset)) {
		ce->__unset = parent->__unset;
	}
	if (FUNC0(!ce->__isset)) {
		ce->__isset = parent->__isset;
	}
	if (FUNC0(!ce->__call)) {
		ce->__call = parent->__call;
	}
	if (FUNC0(!ce->__callstatic)) {
		ce->__callstatic = parent->__callstatic;
	}
	if (FUNC0(!ce->__tostring)) {
		ce->__tostring = parent->__tostring;
	}
	if (FUNC0(!ce->clone)) {
		ce->clone = parent->clone;
	}
	if (FUNC0(!ce->serialize_func)) {
		ce->serialize_func = parent->serialize_func;
	}
	if (FUNC0(!ce->serialize)) {
		ce->serialize = parent->serialize;
	}
	if (FUNC0(!ce->unserialize_func)) {
		ce->unserialize_func = parent->unserialize_func;
	}
	if (FUNC0(!ce->unserialize)) {
		ce->unserialize = parent->unserialize;
	}
	if (!ce->destructor) {
		ce->destructor = parent->destructor;
	}
	if (FUNC0(!ce->__debugInfo)) {
		ce->__debugInfo = parent->__debugInfo;
	}

	if (ce->constructor) {
		if (parent->constructor && FUNC1(parent->constructor->common.fn_flags & ZEND_ACC_FINAL)) {
			FUNC4(E_ERROR, "Cannot override final %s::%s() with %s::%s()",
				FUNC3(parent->name), FUNC3(parent->constructor->common.function_name),
				FUNC3(ce->name), FUNC3(ce->constructor->common.function_name));
		}
		return;
	}

	ce->constructor = parent->constructor;
}