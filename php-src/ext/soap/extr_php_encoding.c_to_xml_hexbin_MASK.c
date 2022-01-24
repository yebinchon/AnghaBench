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
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  encodeTypePtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IS_STRING ; 
 int SOAP_ENCODED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 scalar_t__ FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static xmlNodePtr FUNC14(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
	static char hexconvtab[] = "0123456789ABCDEF";
	xmlNodePtr ret, text;
	unsigned char *str;
	zval tmp;
	size_t i, j;

	ret = FUNC10(NULL, FUNC0("BOGUS"));
	FUNC9(parent, ret);
	FUNC1(data, ret, style);

	if (FUNC5(data) != IS_STRING) {
		FUNC2(&tmp, FUNC12(data));
		data = &tmp;
	}
	str = (unsigned char *) FUNC7(FUNC3(data) * 2, sizeof(char), 1);

	for (i = j = 0; i < FUNC3(data); i++) {
		str[j++] = hexconvtab[((unsigned char)FUNC4(data)[i]) >> 4];
		str[j++] = hexconvtab[((unsigned char)FUNC4(data)[i]) & 15];
	}
	str[j] = '\0';

	text = FUNC11(str, FUNC3(data) * 2 * sizeof(char));
	FUNC9(ret, text);
	FUNC6(str);
	if (data == &tmp) {
		FUNC13(&tmp);
	}

	if (style == SOAP_ENCODED) {
		FUNC8(ret, type);
	}
	return ret;
}