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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  UChar ;
typedef  int /*<<< orphan*/  MessageFormatter_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RETURN_FALSE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(MessageFormatter_object *mfo, zval *args, zval *return_value)
{
	UChar* formatted = NULL;
	int32_t formatted_len = 0;

	FUNC5(mfo, FUNC3(args), &formatted, &formatted_len);

	if (FUNC2(FUNC0(mfo))) {
		if (formatted) {
			FUNC4(formatted);
		}
		RETURN_FALSE;
	} else {
		FUNC1(mfo, formatted, formatted_len, 1);
	}
}