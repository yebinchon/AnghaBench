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
typedef  scalar_t__ zend_long ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ UChar32 ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ IS_LONG ; 
 scalar_t__ IS_STRING ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,size_t,scalar_t__) ; 
 scalar_t__ UCHAR_MAX_VALUE ; 
 scalar_t__ UCHAR_MIN_VALUE ; 
 int /*<<< orphan*/  U_ILLEGAL_ARGUMENT_ERROR ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8(UChar32* pcp, zval *zcp) {
	zend_long cp = -1;

	if (FUNC5(zcp) == IS_LONG) {
		cp = FUNC2(zcp);
	} else if (FUNC5(zcp) == IS_STRING) {
		int32_t i = 0;
		size_t zcp_len = FUNC3(zcp);

		if (FUNC1(zcp_len)) {
			FUNC6(NULL, U_ILLEGAL_ARGUMENT_ERROR);
			FUNC7(NULL, "Input string is too long.", 0);
			return FAILURE;
		}

		FUNC0(FUNC4(zcp), i, zcp_len, cp);
		if ((size_t)i != zcp_len) {
			FUNC6(NULL, U_ILLEGAL_ARGUMENT_ERROR);
			FUNC7(NULL, "Passing a UTF-8 character for codepoint requires a string which is exactly one UTF-8 codepoint long.", 0);
			return FAILURE;
		}
	} else {
		FUNC6(NULL, U_ILLEGAL_ARGUMENT_ERROR);
		FUNC7(NULL, "Invalid parameter for unicode point.  Must be either integer or UTF-8 sequence.", 0);
		return FAILURE;
	}
	if ((cp < UCHAR_MIN_VALUE) || (cp > UCHAR_MAX_VALUE)) {
		FUNC6(NULL, U_ILLEGAL_ARGUMENT_ERROR);
		FUNC7(NULL, "Codepoint out of range", 0);
		return FAILURE;
	}
	*pcp = (UChar32)cp;
	return SUCCESS;
}