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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MAX_LENGTH_OF_DOUBLE ; 
 int SOAP_ENCODED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char,char,char*) ; 
 int /*<<< orphan*/  precision ; 
 scalar_t__ FUNC7 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static xmlNodePtr FUNC14(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
	xmlNodePtr ret;
	zval tmp;
	char *str;

	ret = FUNC11(NULL, FUNC0("BOGUS"));
	FUNC10(parent, ret);
	FUNC2(data, ret, style);

	FUNC3(&tmp, FUNC13(data));

	str = (char *) FUNC7(FUNC1(precision) >= 0 ? FUNC1(precision) : 17, 1, MAX_LENGTH_OF_DOUBLE + 1);
	FUNC6(FUNC4(tmp), FUNC1(precision), '.', 'E', str);
	FUNC12(ret, FUNC0(str), FUNC9(str));
	FUNC5(str);

	if (style == SOAP_ENCODED) {
		FUNC8(ret, type);
	}
	return ret;
}