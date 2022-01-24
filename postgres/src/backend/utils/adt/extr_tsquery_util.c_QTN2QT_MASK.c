#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  curoperand; int /*<<< orphan*/  operand; int /*<<< orphan*/  curitem; } ;
struct TYPE_8__ {int size; } ;
typedef  TYPE_1__* TSQuery ;
typedef  int /*<<< orphan*/  QTNode ;
typedef  TYPE_2__ QTN2QTState ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

TSQuery
FUNC11(QTNode *in)
{
	TSQuery		out;
	int			len;
	int			sumlen = 0,
				nnode = 0;
	QTN2QTState state;

	FUNC5(in, &sumlen, &nnode);

	if (FUNC4(nnode, sumlen))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC8("tsquery is too large")));
	len = FUNC0(nnode, sumlen);

	out = (TSQuery) FUNC10(len);
	FUNC3(out, len);
	out->size = nnode;

	state.curitem = FUNC2(out);
	state.operand = state.curoperand = FUNC1(out);

	FUNC9(&state, in);
	return out;
}