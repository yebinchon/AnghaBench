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
struct sqlca_t {int dummy; } ;

/* Variables and functions */
 struct sqlca_t* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  sqlca_init ; 

void
FUNC2(void)
{
	struct sqlca_t *sqlca = FUNC0();

	if (sqlca == NULL)
		return;

	FUNC1((char *) sqlca, (char *) &sqlca_init, sizeof(struct sqlca_t));
}