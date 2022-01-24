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
struct sqlca_t {int* sqlerrd; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ; 
 struct sqlca_t* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sqlca_t*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char const*) ; 

bool
FUNC6(int lineno, const char *desc_name, int *count)
{
	PGresult   *ECPGresult;
	struct sqlca_t *sqlca = FUNC0();

	if (sqlca == NULL)
	{
		FUNC4(lineno, ECPG_OUT_OF_MEMORY,
				   ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, NULL);
		return false;
	}

	FUNC2(sqlca);
	ECPGresult = FUNC5(lineno, desc_name);
	if (!ECPGresult)
		return false;

	*count = FUNC1(ECPGresult);
	sqlca->sqlerrd[2] = 1;
	FUNC3("ECPGget_desc_header: found %d attributes\n", *count);
	return true;
}