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
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ zend_module_entry ;
struct TYPE_10__ {TYPE_1__* module; } ;
struct TYPE_11__ {TYPE_2__ internal; } ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/ * name; TYPE_3__ info; } ;
typedef  TYPE_5__ zend_class_entry ;
typedef  scalar_t__ zend_bool ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ ZEND_INTERNAL_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(zend_class_entry *ce, zend_string *key, zval *class_array, zend_module_entry *module, zend_bool add_reflection_class)
{
	if (ce->type == ZEND_INTERNAL_CLASS && ce->info.internal.module && !FUNC2(ce->info.internal.module->name, module->name)) {
		zend_string *name;

		if (!FUNC6(ce->name, key)) {
			/* This is a class alias, use alias name */
			name = key;
		} else {
			/* Use class name */
			name = ce->name;
		}
		if (add_reflection_class) {
			zval zclass;
			FUNC4(ce, &zclass);
			FUNC3(FUNC0(class_array), name, &zclass);
		} else {
			FUNC1(class_array, FUNC5(name));
		}
	}
}