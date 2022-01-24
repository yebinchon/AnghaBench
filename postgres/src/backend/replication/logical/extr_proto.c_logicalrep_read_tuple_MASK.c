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
struct TYPE_3__ {int* changed; char** values; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ LogicalRepTupleData ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(StringInfo in, LogicalRepTupleData *tuple)
{
	int			i;
	int			natts;

	/* Get number of attributes */
	natts = FUNC5(in, 2);

	FUNC1(tuple->changed, 0, sizeof(tuple->changed));

	/* Read the data */
	for (i = 0; i < natts; i++)
	{
		char		kind;

		kind = FUNC4(in);

		switch (kind)
		{
			case 'n':			/* null */
				tuple->values[i] = NULL;
				tuple->changed[i] = true;
				break;
			case 'u':			/* unchanged column */
				/* we don't receive the value of an unchanged column */
				tuple->values[i] = NULL;
				break;
			case 't':			/* text formatted value */
				{
					int			len;

					tuple->changed[i] = true;

					len = FUNC5(in, 4);	/* read length */

					/* and data */
					tuple->values[i] = FUNC2(len + 1);
					FUNC3(in, tuple->values[i], len);
					tuple->values[i][len] = '\0';
				}
				break;
			default:
				FUNC0(ERROR, "unrecognized data representation type '%c'", kind);
		}
	}
}