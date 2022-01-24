#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_10__ {TYPE_1__* ce; } ;
typedef  TYPE_2__ zend_property_info ;
struct TYPE_11__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_3__ zend_class_entry ;
struct TYPE_12__ {scalar_t__ ignore_visibility; TYPE_3__* ce; int /*<<< orphan*/  ref_type; TYPE_5__* ptr; } ;
typedef  TYPE_4__ reflection_object ;
struct TYPE_13__ {int /*<<< orphan*/  unmangled_name; TYPE_2__* prop; } ;
typedef  TYPE_5__ property_reference ;
struct TYPE_9__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_TYPE_PROPERTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reflection_property_ptr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(zend_class_entry *ce, zend_string *name, zend_property_info *prop, zval *object)
{
	reflection_object *intern;
	property_reference *reference;

	FUNC3(reflection_property_ptr, object);
	intern = FUNC1(object);
	reference = (property_reference*) FUNC2(sizeof(property_reference));
	reference->prop = prop;
	reference->unmangled_name = FUNC6(name);
	intern->ptr = reference;
	intern->ref_type = REF_TYPE_PROPERTY;
	intern->ce = ce;
	intern->ignore_visibility = 0;
	FUNC0(FUNC5(object), name);
	FUNC0(FUNC4(object), prop ? prop->ce->name : ce->name);
}