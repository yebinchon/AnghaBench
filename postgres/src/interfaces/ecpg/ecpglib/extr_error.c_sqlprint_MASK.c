#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* sqlerrmc; size_t sqlerrml; } ;
struct sqlca_t {TYPE_1__ sqlerrm; } ;

/* Variables and functions */
 struct sqlca_t* FUNC0 () ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4(void)
{
	struct sqlca_t *sqlca = FUNC0();

	if (sqlca == NULL)
	{
		FUNC2("out of memory");
		return;
	}

	sqlca->sqlerrm.sqlerrmc[sqlca->sqlerrm.sqlerrml] = '\0';
	FUNC3(stderr, FUNC1("SQL error: %s\n"), sqlca->sqlerrm.sqlerrmc);
}