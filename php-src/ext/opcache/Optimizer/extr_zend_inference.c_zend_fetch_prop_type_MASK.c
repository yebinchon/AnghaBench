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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_script ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ zend_property_info ;
typedef  int /*<<< orphan*/  zend_class_entry ;
typedef  int uint32_t ;

/* Variables and functions */
 int MAY_BE_ANY ; 
 int MAY_BE_ARRAY ; 
 int MAY_BE_ARRAY_KEY_ANY ; 
 int MAY_BE_ARRAY_OF_ANY ; 
 int MAY_BE_ARRAY_OF_REF ; 
 int MAY_BE_OBJECT ; 
 int MAY_BE_RC1 ; 
 int MAY_BE_RCN ; 
 int MAY_BE_RESOURCE ; 
 int MAY_BE_STRING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC11(const zend_script *script, zend_property_info *prop_info, zend_class_entry **pce)
{
	if (pce) {
		*pce = NULL;
	}
	if (prop_info && FUNC4(prop_info->type)) {
		uint32_t type = FUNC8(FUNC6(prop_info->type));

		if (type & (MAY_BE_STRING|MAY_BE_ARRAY|MAY_BE_OBJECT|MAY_BE_RESOURCE)) {
			type |= MAY_BE_RC1 | MAY_BE_RCN;
		}
		if (FUNC2(prop_info->type)) {
			type |= MAY_BE_OBJECT;
			if (pce) {
				if (FUNC1(prop_info->type)) {
					*pce = FUNC0(prop_info->type);
				} else if (FUNC3(prop_info->type)) {
					zend_string *lcname = FUNC10(FUNC5(prop_info->type));
					*pce = FUNC7(script, lcname);
					FUNC9(lcname);
				}
			}
		}
		return type;
	}
	return MAY_BE_ANY | MAY_BE_ARRAY_KEY_ANY | MAY_BE_ARRAY_OF_ANY | MAY_BE_ARRAY_OF_REF | MAY_BE_RC1 | MAY_BE_RCN;
}