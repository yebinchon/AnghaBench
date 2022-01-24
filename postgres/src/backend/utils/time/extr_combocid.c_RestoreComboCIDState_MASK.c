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
struct TYPE_2__ {int /*<<< orphan*/  cmax; int /*<<< orphan*/  cmin; } ;
typedef  int CommandId ;
typedef  TYPE_1__ ComboCidKeyData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  comboCids ; 
 int /*<<< orphan*/  comboHash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void
FUNC3(char *comboCIDstate)
{
	int			num_elements;
	ComboCidKeyData *keydata;
	int			i;
	CommandId	cid;

	FUNC0(!comboCids && !comboHash);

	/* First, we retrieve the number of ComboCIDs that were serialized. */
	num_elements = *(int *) comboCIDstate;
	keydata = (ComboCidKeyData *) (comboCIDstate + sizeof(int));

	/* Use GetComboCommandId to restore each ComboCID. */
	for (i = 0; i < num_elements; i++)
	{
		cid = FUNC1(keydata[i].cmin, keydata[i].cmax);

		/* Verify that we got the expected answer. */
		if (cid != i)
			FUNC2(ERROR, "unexpected command ID while restoring combo CIDs");
	}
}