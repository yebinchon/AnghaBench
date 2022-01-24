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
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int code ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(int argc, const char *argv[])
{
//	struct
	fd_set mask;
	int nfnd = 1;

	FUNC0(&mask);
	while (nfnd > 0) {
//		FD_SET(fileno(cin), &mask); // Chris
		if ((nfnd = FUNC1(&mask,0)) < 0) {
			FUNC4("reset");
			code = -1;
			FUNC3();
		}
		else if (nfnd) {
			(void) FUNC2(0);
		}
	}
}