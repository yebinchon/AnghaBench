#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_context ;
struct TYPE_6__ {int num_new_cols; char** new_colnames; int /*<<< orphan*/  printaliases; } ;
typedef  TYPE_2__ deparse_columns ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(deparse_columns *colinfo, deparse_context *context)
{
	StringInfo	buf = context->buf;
	int			i;
	bool		first = true;

	/* Don't print aliases if not needed */
	if (!colinfo->printaliases)
		return;

	for (i = 0; i < colinfo->num_new_cols; i++)
	{
		char	   *colname = colinfo->new_colnames[i];

		if (first)
		{
			FUNC0(buf, '(');
			first = false;
		}
		else
			FUNC1(buf, ", ");
		FUNC1(buf, FUNC2(colname));
	}
	if (!first)
		FUNC0(buf, ')');
}