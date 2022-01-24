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
typedef  int int32 ;
typedef  int /*<<< orphan*/  WindowObject ;
struct TYPE_3__ {int /*<<< orphan*/  flinfo; } ;
typedef  TYPE_1__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  WINDOW_SEEK_CURRENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Datum
FUNC7(FunctionCallInfo fcinfo,
			   bool forward, bool withoffset, bool withdefault)
{
	WindowObject winobj = FUNC3();
	int32		offset;
	bool		const_offset;
	Datum		result;
	bool		isnull;
	bool		isout;

	if (withoffset)
	{
		offset = FUNC0(FUNC4(winobj, 1, &isnull));
		if (isnull)
			FUNC2();
		const_offset = FUNC6(fcinfo->flinfo, 1);
	}
	else
	{
		offset = 1;
		const_offset = true;
	}

	result = FUNC5(winobj, 0,
									  (forward ? offset : -offset),
									  WINDOW_SEEK_CURRENT,
									  const_offset,
									  &isnull, &isout);

	if (isout)
	{
		/*
		 * target row is out of the partition; supply default value if
		 * provided.  otherwise it'll stay NULL
		 */
		if (withdefault)
			result = FUNC4(winobj, 2, &isnull);
	}

	if (isnull)
		FUNC2();

	FUNC1(result);
}