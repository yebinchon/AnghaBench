#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IS_STRING ; 
 int SOAP_ENCODED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static xmlNodePtr FUNC14(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
	xmlNodePtr ret, text;
	zend_string *str;

	ret = FUNC10(NULL, FUNC0("BOGUS"));
	FUNC9(parent, ret);
	FUNC1(data, ret, style);

	if (FUNC6(data) == IS_STRING) {
		str = FUNC7((unsigned char*)FUNC5(data), FUNC4(data));
	} else {
		zend_string *tmp = FUNC13(data);
		str = FUNC7((unsigned char*) FUNC3(tmp), FUNC2(tmp));
		FUNC12(tmp, 0);
	}

	text = FUNC11(FUNC0(FUNC3(str)), FUNC2(str));
	FUNC9(ret, text);
	FUNC12(str, 0);

	if (style == SOAP_ENCODED) {
		FUNC8(ret, type);
	}
	return ret;
}