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
typedef  int /*<<< orphan*/  ExpandedObjectHeader ;
typedef  char Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char) ; 
 char* FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 (char,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(Datum value, bool isnull, bool typByVal, int typLen,
			   char **start_address)
{
	ExpandedObjectHeader *eoh = NULL;
	int			header;

	/* Write header word. */
	if (isnull)
		header = -2;
	else if (typByVal)
		header = -1;
	else if (typLen == -1 &&
			 FUNC4(FUNC1(value)))
	{
		eoh = FUNC0(value);
		header = FUNC3(eoh);
	}
	else
		header = FUNC5(value, typByVal, typLen);
	FUNC6(*start_address, &header, sizeof(int));
	*start_address += sizeof(int);

	/* If not null, write payload bytes. */
	if (!isnull)
	{
		if (typByVal)
		{
			FUNC6(*start_address, &value, sizeof(Datum));
			*start_address += sizeof(Datum);
		}
		else if (eoh)
		{
			char	   *tmp;

			/*
			 * EOH_flatten_into expects the target address to be maxaligned,
			 * so we can't store directly to *start_address.
			 */
			tmp = (char *) FUNC7(header);
			FUNC2(eoh, (void *) tmp, header);
			FUNC6(*start_address, tmp, header);
			*start_address += header;

			/* be tidy. */
			FUNC8(tmp);
		}
		else
		{
			FUNC6(*start_address, FUNC1(value), header);
			*start_address += header;
		}
	}
}