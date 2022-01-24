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
struct descriptor {int count; struct descriptor* name; int /*<<< orphan*/  result; int /*<<< orphan*/ * items; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECPG_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY ; 
 struct sqlca_t* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct descriptor* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (struct sqlca_t*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (struct descriptor*,char const*) ; 
 int FUNC9 (char const*) ; 

bool
FUNC10(int line, const char *name)
{
	struct descriptor *new;
	struct sqlca_t *sqlca = FUNC0();

	if (sqlca == NULL)
	{
		FUNC5(line, ECPG_OUT_OF_MEMORY,
				   ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, NULL);
		return false;
	}

	FUNC4(sqlca);
	new = (struct descriptor *) FUNC2(sizeof(struct descriptor), line);
	if (!new)
		return false;
	new->next = FUNC6();
	new->name = FUNC2(FUNC9(name) + 1, line);
	if (!new->name)
	{
		FUNC3(new);
		return false;
	}
	new->count = -1;
	new->items = NULL;
	new->result = FUNC1(NULL, 0);
	if (!new->result)
	{
		FUNC3(new->name);
		FUNC3(new);
		FUNC5(line, ECPG_OUT_OF_MEMORY, ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, NULL);
		return false;
	}
	FUNC8(new->name, name);
	FUNC7(new);
	return true;
}