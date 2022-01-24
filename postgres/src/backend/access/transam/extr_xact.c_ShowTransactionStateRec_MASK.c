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
typedef  TYPE_1__* TransactionState ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {scalar_t__ nChildXids; char* name; scalar_t__ subTransactionId; int /*<<< orphan*/  fullTransactionId; int /*<<< orphan*/  state; int /*<<< orphan*/  blockState; int /*<<< orphan*/  nestingLevel; struct TYPE_6__* parent; int /*<<< orphan*/ * childXids; } ;
typedef  TYPE_2__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG5 ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ currentCommandId ; 
 scalar_t__ currentCommandIdUsed ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(const char *str, TransactionState s)
{
	StringInfoData buf;

	FUNC7(&buf);

	if (s->nChildXids > 0)
	{
		int			i;

		FUNC4(&buf, ", children: %u", s->childXids[0]);
		for (i = 1; i < s->nChildXids; i++)
			FUNC4(&buf, " %u", s->childXids[i]);
	}

	if (s->parent)
		FUNC9(str, s->parent);

	/* use ereport to suppress computation if msg will not be printed */
	FUNC5(DEBUG5,
			(FUNC6("%s(%d) name: %s; blockState: %s; state: %s, xid/subid/cid: %u/%u/%u%s%s",
							 str, s->nestingLevel,
							 FUNC1(s->name) ? s->name : "unnamed",
							 FUNC0(s->blockState),
							 FUNC2(s->state),
							 (unsigned int) FUNC3(s->fullTransactionId),
							 (unsigned int) s->subTransactionId,
							 (unsigned int) currentCommandId,
							 currentCommandIdUsed ? " (used)" : "",
							 buf.data)));

	FUNC8(buf.data);
}