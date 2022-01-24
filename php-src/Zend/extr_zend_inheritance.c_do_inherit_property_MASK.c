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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_18__ {int flags; int /*<<< orphan*/  type; int /*<<< orphan*/  offset; } ;
typedef  TYPE_2__ zend_property_info ;
struct TYPE_19__ {int type; int /*<<< orphan*/  properties_info; TYPE_1__* parent; int /*<<< orphan*/ * name; int /*<<< orphan*/ * default_properties_table; } ;
typedef  TYPE_3__ zend_class_entry ;
typedef  scalar_t__ inheritance_status ;
struct TYPE_17__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ INHERITANCE_ERROR ; 
 scalar_t__ INHERITANCE_UNRESOLVED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int ZEND_ACC_CHANGED ; 
 int ZEND_ACC_PPP_MASK ; 
 int ZEND_ACC_PRIVATE ; 
 int ZEND_ACC_PUBLIC ; 
 int ZEND_ACC_STATIC ; 
 int ZEND_INTERNAL_CLASS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(zend_property_info *parent_info, zend_string *key, zend_class_entry *ce) /* {{{ */
{
	zval *child = FUNC12(&ce->properties_info, key, 1);
	zend_property_info *child_info;

	if (FUNC1(*child)) {
		child_info = FUNC5(child);
		if (parent_info->flags & (ZEND_ACC_PRIVATE|ZEND_ACC_CHANGED)) {
			child_info->flags |= ZEND_ACC_CHANGED;
		}
		if (!(parent_info->flags & ZEND_ACC_PRIVATE)) {
			if (FUNC1((parent_info->flags & ZEND_ACC_STATIC) != (child_info->flags & ZEND_ACC_STATIC))) {
				FUNC11(E_COMPILE_ERROR, "Cannot redeclare %s%s::$%s as %s%s::$%s",
					(parent_info->flags & ZEND_ACC_STATIC) ? "static " : "non static ", FUNC3(ce->parent->name), FUNC3(key),
					(child_info->flags & ZEND_ACC_STATIC) ? "static " : "non static ", FUNC3(ce->name), FUNC3(key));
			}

			if (FUNC1((child_info->flags & ZEND_ACC_PPP_MASK) > (parent_info->flags & ZEND_ACC_PPP_MASK))) {
				FUNC11(E_COMPILE_ERROR, "Access level to %s::$%s must be %s (as in class %s)%s", FUNC3(ce->name), FUNC3(key), FUNC13(parent_info->flags), FUNC3(ce->parent->name), (parent_info->flags&ZEND_ACC_PUBLIC) ? "" : " or weaker");
			} else if ((child_info->flags & ZEND_ACC_STATIC) == 0) {
				int parent_num = FUNC0(parent_info->offset);
				int child_num = FUNC0(child_info->offset);

				/* Don't keep default properties in GC (they may be freed by opcache) */
				FUNC14(&(ce->default_properties_table[parent_num]));
				ce->default_properties_table[parent_num] = ce->default_properties_table[child_num];
				FUNC4(&ce->default_properties_table[child_num]);
				child_info->offset = parent_info->offset;
			}

			if (FUNC1(FUNC2(parent_info->type))) {
				inheritance_status status = FUNC9(parent_info, child_info);
				if (status == INHERITANCE_ERROR) {
					FUNC8(child_info, parent_info);
				}
				if (status == INHERITANCE_UNRESOLVED) {
					FUNC7(ce, child_info, parent_info);
				}
			} else if (FUNC1(FUNC2(child_info->type) && !FUNC2(parent_info->type))) {
				FUNC11(E_COMPILE_ERROR,
						"Type of %s::$%s must not be defined (as in class %s)",
						FUNC3(ce->name),
						FUNC3(key),
						FUNC3(ce->parent->name));
			}
		}
	} else {
		if (FUNC1(ce->type & ZEND_INTERNAL_CLASS)) {
			child_info = FUNC10(parent_info);
		} else {
			child_info = parent_info;
		}
		FUNC6(&ce->properties_info, key, child_info);
	}
}