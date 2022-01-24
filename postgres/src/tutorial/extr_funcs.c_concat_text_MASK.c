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
typedef  int /*<<< orphan*/  text ;
typedef  scalar_t__ int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

text *
FUNC5(text *arg1, text *arg2)
{
	int32		arg1_size = FUNC2(arg1) - VARHDRSZ;
	int32		arg2_size = FUNC2(arg2) - VARHDRSZ;
	int32		new_text_size = arg1_size + arg2_size + VARHDRSZ;
	text	   *new_text = (text *) FUNC4(new_text_size);

	FUNC0(new_text, new_text_size);
	FUNC3(FUNC1(new_text), FUNC1(arg1), arg1_size);
	FUNC3(FUNC1(new_text) + arg1_size, FUNC1(arg2), arg2_size);
	return new_text;
}