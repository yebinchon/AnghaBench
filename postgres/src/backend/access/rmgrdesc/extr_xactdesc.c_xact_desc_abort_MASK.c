#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  subxacts; int /*<<< orphan*/  nsubxacts; int /*<<< orphan*/  xnodes; int /*<<< orphan*/  nrels; int /*<<< orphan*/  twophase_xid; } ;
typedef  TYPE_1__ xl_xact_parsed_abort ;
struct TYPE_7__ {int /*<<< orphan*/  xact_time; } ;
typedef  TYPE_2__ xl_xact_abort ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(StringInfo buf, uint8 info, xl_xact_abort *xlrec)
{
	xl_xact_parsed_abort parsed;

	FUNC0(info, xlrec, &parsed);

	/* If this is a prepared xact, show the xid of the original xact */
	if (FUNC1(parsed.twophase_xid))
		FUNC2(buf, "%u: ", parsed.twophase_xid);

	FUNC3(buf, FUNC4(xlrec->xact_time));

	FUNC5(buf, "rels", parsed.nrels, parsed.xnodes);
	FUNC6(buf, parsed.nsubxacts, parsed.subxacts);
}