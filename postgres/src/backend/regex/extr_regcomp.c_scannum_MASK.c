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
struct vars {int nextvalue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIGIT ; 
 int DUPMAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  REG_BADBR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int						/* value, <= DUPMAX */
FUNC3(struct vars *v)
{
	int			n = 0;

	while (FUNC2(DIGIT) && n < DUPMAX)
	{
		n = n * 10 + v->nextvalue;
		FUNC1();
	}
	if (FUNC2(DIGIT) || n > DUPMAX)
	{
		FUNC0(REG_BADBR);
		return 0;
	}
	return n;
}