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
struct vars {int /*<<< orphan*/ * now; } ;
typedef  int /*<<< orphan*/  chr ;

/* Variables and functions */
 int /*<<< orphan*/  CCLASS ; 
 int /*<<< orphan*/  COLLEL ; 
 int /*<<< orphan*/  ECLASS ; 
 int /*<<< orphan*/  END ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  PLAIN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static const chr *				/* just after end of sequence */
FUNC4(struct vars *v)
{
	const chr  *endp;

	FUNC3(FUNC2(COLLEL) || FUNC2(ECLASS) || FUNC2(CCLASS));
	FUNC1();

	endp = v->now;
	while (FUNC2(PLAIN))
	{
		endp = v->now;
		FUNC1();
	}

	FUNC3(FUNC2(END) || FUNC0());
	FUNC1();

	return endp;
}