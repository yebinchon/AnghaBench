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
struct vars {int cflags; int /*<<< orphan*/  nexttype; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L_BRE ; 
 int /*<<< orphan*/  L_ERE ; 
 int /*<<< orphan*/  L_Q ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int REG_ADVANCED ; 
 int REG_ADVF ; 
 int REG_EXPANDED ; 
 int REG_EXTENDED ; 
 int REG_NEWLINE ; 
 int REG_QUOTE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vars*) ; 
 int /*<<< orphan*/  FUNC4 (struct vars*) ; 

__attribute__((used)) static void
FUNC5(struct vars *v)
{
	FUNC4(v);				/* may turn on new type bits etc. */
	FUNC1();

	if (v->cflags & REG_QUOTE)
	{
		FUNC2(!(v->cflags & (REG_ADVANCED | REG_EXPANDED | REG_NEWLINE)));
		FUNC0(L_Q);
	}
	else if (v->cflags & REG_EXTENDED)
	{
		FUNC2(!(v->cflags & REG_QUOTE));
		FUNC0(L_ERE);
	}
	else
	{
		FUNC2(!(v->cflags & (REG_QUOTE | REG_ADVF)));
		FUNC0(L_BRE);
	}

	v->nexttype = EMPTY;		/* remember we were at the start */
	FUNC3(v);					/* set up the first token */
}