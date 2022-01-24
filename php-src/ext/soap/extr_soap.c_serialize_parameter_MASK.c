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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  TYPE_1__* sdlParamPtr ;
typedef  int /*<<< orphan*/  paramNameBuf ;
struct TYPE_4__ {char* paramName; } ;

/* Variables and functions */
 scalar_t__ IS_OBJECT ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 scalar_t__ soap_param_class_entry ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static xmlNodePtr FUNC7(sdlParamPtr param, zval *param_val, int index, char *name, int style, xmlNodePtr parent) /* {{{ */
{
	char *paramName;
	xmlNodePtr xmlParam;
	char paramNameBuf[10];

	if (param_val &&
	    FUNC3(param_val) == IS_OBJECT &&
	    FUNC0(param_val) == soap_param_class_entry) {
		zval *param_name;
		zval *param_data;

		if ((param_name = FUNC6(FUNC1(param_val), "param_name", sizeof("param_name")-1)) != NULL &&
		    FUNC3(param_name) == IS_STRING &&
		    (param_data = FUNC6(FUNC1(param_val), "param_data", sizeof("param_data")-1)) != NULL) {
			param_val = param_data;
			name = FUNC2(param_name);
		}
	}

	if (param != NULL && param->paramName != NULL) {
		paramName = param->paramName;
	} else {
		if (name == NULL) {
			paramName = paramNameBuf;
			FUNC5(paramName, sizeof(paramNameBuf), "param%d",index);
		} else {
			paramName = name;
		}
	}

	xmlParam = FUNC4(param_val, param, paramName, style, parent);

	return xmlParam;
}