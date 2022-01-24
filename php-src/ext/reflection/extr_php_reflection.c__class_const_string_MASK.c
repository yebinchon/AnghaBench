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
struct TYPE_3__ {int /*<<< orphan*/  value; int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_class_constant ;
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(smart_str *str, char *name, zend_class_constant *c, char *indent)
{
	char *visibility = FUNC5(FUNC1(c->value));
	const char *type;

	FUNC8(&c->value, c->ce);
	type = FUNC6(&c->value);

	if (FUNC2(c->value) == IS_ARRAY) {
		FUNC3(str, "%sConstant [ %s %s %s ] { Array }\n",
						indent, visibility, type, name);
	} else {
		zend_string *tmp_value_str;
		zend_string *value_str = FUNC7(&c->value, &tmp_value_str);

		FUNC3(str, "%sConstant [ %s %s %s ] { %s }\n",
						indent, visibility, type, name, FUNC0(value_str));

		FUNC4(tmp_value_str);
	}
}