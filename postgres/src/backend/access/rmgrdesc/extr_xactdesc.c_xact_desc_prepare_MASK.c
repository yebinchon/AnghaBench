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
struct TYPE_6__ {int /*<<< orphan*/  initfileinval; } ;
typedef  TYPE_1__ xl_xact_prepare ;
struct TYPE_7__ {int /*<<< orphan*/  tsId; int /*<<< orphan*/  dbId; int /*<<< orphan*/  msgs; int /*<<< orphan*/  nmsgs; int /*<<< orphan*/  subxacts; int /*<<< orphan*/  nsubxacts; int /*<<< orphan*/  abortnodes; int /*<<< orphan*/  nabortrels; int /*<<< orphan*/  xnodes; int /*<<< orphan*/  nrels; int /*<<< orphan*/  xact_time; int /*<<< orphan*/  twophase_gid; } ;
typedef  TYPE_2__ xl_xact_parsed_prepare ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(StringInfo buf, uint8 info, xl_xact_prepare *xlrec)
{
	xl_xact_parsed_prepare parsed;

	FUNC0(info, xlrec, &parsed);

	FUNC1(buf, "gid %s: ", parsed.twophase_gid);
	FUNC2(buf, FUNC4(parsed.xact_time));

	FUNC5(buf, "rels(commit)", parsed.nrels, parsed.xnodes);
	FUNC5(buf, "rels(abort)", parsed.nabortrels,
						parsed.abortnodes);
	FUNC6(buf, parsed.nsubxacts, parsed.subxacts);

	FUNC3(
						buf, parsed.nmsgs, parsed.msgs, parsed.dbId, parsed.tsId,
						xlrec->initfileinval);
}