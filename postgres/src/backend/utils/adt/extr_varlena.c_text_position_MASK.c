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
typedef  int /*<<< orphan*/  TextPositionState ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(text *t1, text *t2, Oid collid)
{
	TextPositionState state;
	int			result;

	/* Empty needle always matches at position 1 */
	if (FUNC0(t2) < 1)
		return 1;

	/* Otherwise, can't match if haystack is shorter than needle */
	if (FUNC0(t1) < FUNC0(t2))
		return 0;

	FUNC4(t1, t2, collid, &state);
	if (!FUNC3(&state))
		result = 0;
	else
		result = FUNC2(&state);
	FUNC1(&state);
	return result;
}