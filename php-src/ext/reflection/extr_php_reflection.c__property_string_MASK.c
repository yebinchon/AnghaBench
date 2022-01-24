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
struct TYPE_3__ {int flags; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_property_info ;
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 int ZEND_ACC_PPP_MASK ; 
#define  ZEND_ACC_PRIVATE 130 
#define  ZEND_ACC_PROTECTED 129 
#define  ZEND_ACC_PUBLIC 128 
 int ZEND_ACC_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const**,char const**) ; 

__attribute__((used)) static void FUNC3(smart_str *str, zend_property_info *prop, const char *prop_name, char* indent)
{
	FUNC0(str, "%sProperty [ ", indent);
	if (!prop) {
		FUNC0(str, "<dynamic> public $%s", prop_name);
	} else {
		if (!(prop->flags & ZEND_ACC_STATIC)) {
			FUNC1(str, "<default> ");
		}

		/* These are mutually exclusive */
		switch (prop->flags & ZEND_ACC_PPP_MASK) {
			case ZEND_ACC_PUBLIC:
				FUNC1(str, "public ");
				break;
			case ZEND_ACC_PRIVATE:
				FUNC1(str, "private ");
				break;
			case ZEND_ACC_PROTECTED:
				FUNC1(str, "protected ");
				break;
		}
		if (prop->flags & ZEND_ACC_STATIC) {
			FUNC1(str, "static ");
		}
		if (!prop_name) {
			const char *class_name;
			FUNC2(prop->name, &class_name, &prop_name);
		}
		FUNC0(str, "$%s", prop_name);
	}

	FUNC1(str, " ]\n");
}