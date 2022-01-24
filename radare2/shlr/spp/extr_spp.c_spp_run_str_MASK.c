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
struct TYPE_3__ {int /*<<< orphan*/  cout; int /*<<< orphan*/ * fout; } ;
typedef  TYPE_1__ Output ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC5(char *buf, int *rv) {
	char *b;
	Output tmp;
	tmp.fout = NULL;
	tmp.cout = FUNC2 ("");
	int rc = FUNC3 (buf, &tmp);
	b = FUNC4 (FUNC1 (tmp.cout));
	FUNC0 (tmp.cout);
	if (rv) {
		*rv = rc;
	}
	return b;
}