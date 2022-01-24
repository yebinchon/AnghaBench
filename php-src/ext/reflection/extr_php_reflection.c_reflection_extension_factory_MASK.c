#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct _zend_module_entry {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ce; int /*<<< orphan*/  ref_type; struct _zend_module_entry* ptr; } ;
typedef  TYPE_1__ reflection_object ;

/* Variables and functions */
 int /*<<< orphan*/  REF_TYPE_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  module_registry ; 
 int /*<<< orphan*/  reflection_extension_ptr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char const*) ; 
 struct _zend_module_entry* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(zval *object, const char *name_str)
{
	reflection_object *intern;
	size_t name_len = FUNC5(name_str);
	zend_string *lcname;
	struct _zend_module_entry *module;

	lcname = FUNC8(name_len, 0);
	FUNC7(FUNC0(lcname), name_str, name_len);
	module = FUNC6(&module_registry, lcname);
	FUNC9(lcname);
	if (!module) {
		return;
	}

	FUNC3(reflection_extension_ptr, object);
	intern = FUNC2(object);
	intern->ptr = module;
	intern->ref_type = REF_TYPE_OTHER;
	intern->ce = NULL;
	FUNC1(FUNC4(object), module->name, name_len);
}