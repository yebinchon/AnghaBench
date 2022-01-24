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
struct vars {int dummy; } ;
struct cvec {int dummy; } ;
typedef  scalar_t__ chr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cvec*,scalar_t__) ; 
 struct cvec* FUNC1 (struct vars*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static struct cvec *
FUNC4(struct vars *v,		/* context */
		 chr c)					/* character to get case equivs of */
{
	struct cvec *cv;
	chr			lc,
				uc;

	lc = FUNC2(c);
	uc = FUNC3(c);

	cv = FUNC1(v, 2, 0);
	FUNC0(cv, lc);
	if (lc != uc)
		FUNC0(cv, uc);
	return cv;
}