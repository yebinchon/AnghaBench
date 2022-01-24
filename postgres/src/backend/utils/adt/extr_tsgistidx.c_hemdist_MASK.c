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
typedef  int /*<<< orphan*/  SignTSVector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int SIGLENBIT ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(SignTSVector *a, SignTSVector *b)
{
	if (FUNC1(a))
	{
		if (FUNC1(b))
			return 0;
		else
			return SIGLENBIT - FUNC3(FUNC0(b));
	}
	else if (FUNC1(b))
		return SIGLENBIT - FUNC3(FUNC0(a));

	return FUNC2(FUNC0(a), FUNC0(b));
}