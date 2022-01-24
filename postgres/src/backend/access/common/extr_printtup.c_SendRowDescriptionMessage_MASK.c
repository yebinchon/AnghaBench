#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
typedef  TYPE_1__* TupleDesc ;
struct TYPE_5__ {int natts; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FrontendProtocol ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void
FUNC6(StringInfo buf, TupleDesc typeinfo,
						  List *targetlist, int16 *formats)
{
	int			natts = typeinfo->natts;
	int			proto = FUNC0(FrontendProtocol);

	/* tuple descriptor message type */
	FUNC3(buf, 'T');
	/* # of attrs in tuples */
	FUNC5(buf, natts);

	if (proto >= 3)
		FUNC2(buf, typeinfo, targetlist, formats);
	else
		FUNC1(buf, typeinfo, targetlist, formats);

	FUNC4(buf);
}