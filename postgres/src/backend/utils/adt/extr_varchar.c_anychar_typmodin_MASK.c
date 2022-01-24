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
typedef  int int32 ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int MaxAttrSize ; 
 int VARHDRSZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int32
FUNC4(ArrayType *ta, const char *typename)
{
	int32		typmod;
	int32	   *tl;
	int			n;

	tl = FUNC0(ta, &n);

	/*
	 * we're not too tense about good error message here because grammar
	 * shouldn't allow wrong number of modifiers for CHAR
	 */
	if (n != 1)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("invalid type modifier")));

	if (*tl < 1)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("length for type %s must be at least 1", typename)));
	if (*tl > MaxAttrSize)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("length for type %s cannot exceed %d",
						typename, MaxAttrSize)));

	/*
	 * For largely historical reasons, the typmod is VARHDRSZ plus the number
	 * of characters; there is enough client-side code that knows about that
	 * that we'd better not change it.
	 */
	typmod = VARHDRSZ + *tl;

	return typmod;
}