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
 int SOAP_ENCODED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static xmlNodePtr FUNC7(encodeTypePtr type, zval *data, int style, xmlNodePtr parent)
{
	xmlNodePtr ret;

	ret = FUNC4(NULL, FUNC0("BOGUS"));
	FUNC3(parent, ret);
	FUNC1(data, ret, style);

	if (FUNC6(data)) {
		FUNC5(ret, FUNC0("true"));
	} else {
		FUNC5(ret, FUNC0("false"));
	}

	if (style == SOAP_ENCODED) {
		FUNC2(ret, type);
	}
	return ret;
}