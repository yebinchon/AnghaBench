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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  LogicalRepTupleData ;
typedef  int /*<<< orphan*/  LogicalRepRelId ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

LogicalRepRelId
FUNC4(StringInfo in, LogicalRepTupleData *newtup)
{
	char		action;
	LogicalRepRelId relid;

	/* read the relation id */
	relid = FUNC3(in, 4);

	action = FUNC2(in);
	if (action != 'N')
		FUNC0(ERROR, "expected new tuple but got %d",
			 action);

	FUNC1(in, newtup);

	return relid;
}