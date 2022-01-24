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
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ zend_arg_info ;
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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

uint32_t FUNC9(const zend_script *script, zend_arg_info *arg_info, zend_class_entry **pce)
{
	uint32_t tmp;
	if (!FUNC2(arg_info->type)) {
		return MAY_BE_ANY|MAY_BE_ARRAY_KEY_ANY|MAY_BE_ARRAY_OF_ANY|MAY_BE_ARRAY_OF_REF|MAY_BE_RC1|MAY_BE_RCN;
	}

	tmp = FUNC6(FUNC4(arg_info->type));
	*pce = NULL;
	if (FUNC0(arg_info->type)) {
		tmp |= MAY_BE_OBJECT;
		/* As we only have space to store one CE, we use a plain object type for class unions. */
		if (FUNC1(arg_info->type)) {
			zend_string *lcname = FUNC8(FUNC3(arg_info->type));
			*pce = FUNC5(script, lcname);
			FUNC7(lcname, 0);
		}
	}
	if (tmp & (MAY_BE_STRING|MAY_BE_ARRAY|MAY_BE_OBJECT|MAY_BE_RESOURCE)) {
		tmp |= MAY_BE_RC1 | MAY_BE_RCN;
	}
	return tmp;
}