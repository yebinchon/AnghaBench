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
struct TYPE_7__ {unsigned short t_info; int /*<<< orphan*/  t_tid; } ;
struct TYPE_6__ {int /*<<< orphan*/  attLabelType; } ;
typedef  TYPE_1__ SpGistState ;
typedef  TYPE_2__* SpGistNodeTuple ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 unsigned short INDEX_NULL_MASK ; 
 unsigned int INDEX_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 unsigned int SGNTHDRSZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int) ; 

SpGistNodeTuple
FUNC8(SpGistState *state, Datum label, bool isnull)
{
	SpGistNodeTuple tup;
	unsigned int size;
	unsigned short infomask = 0;

	/* compute space needed (note result is already maxaligned) */
	size = SGNTHDRSZ;
	if (!isnull)
		size += FUNC2(&state->attLabelType, label);

	/*
	 * Here we make sure that the size will fit in the field reserved for it
	 * in t_info.
	 */
	if ((size & INDEX_SIZE_MASK) != size)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC5("index row requires %zu bytes, maximum size is %zu",
						(Size) size, (Size) INDEX_SIZE_MASK)));

	tup = (SpGistNodeTuple) FUNC7(size);

	if (isnull)
		infomask |= INDEX_NULL_MASK;
	/* we don't bother setting the INDEX_VAR_MASK bit */
	infomask |= size;
	tup->t_info = infomask;

	/* The TID field will be filled in later */
	FUNC0(&tup->t_tid);

	if (!isnull)
		FUNC6(FUNC1(tup), &state->attLabelType, label);

	return tup;
}