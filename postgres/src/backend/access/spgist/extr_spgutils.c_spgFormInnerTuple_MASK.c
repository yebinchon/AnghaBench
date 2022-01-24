#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nNodes; unsigned int prefixSize; unsigned int size; } ;
struct TYPE_7__ {int /*<<< orphan*/  attPrefixType; } ;
typedef  TYPE_1__ SpGistState ;
typedef  int /*<<< orphan*/  SpGistNodeTuple ;
typedef  TYPE_2__* SpGistInnerTuple ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SGDTSIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 unsigned int SGITHDRSZ ; 
 int SGITMAXNNODES ; 
 unsigned int SGITMAXPREFIXSIZE ; 
 unsigned int SGITMAXSIZE ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int SPGIST_PAGE_CAPACITY ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (unsigned int) ; 

SpGistInnerTuple
FUNC12(SpGistState *state, bool hasPrefix, Datum prefix,
				  int nNodes, SpGistNodeTuple *nodes)
{
	SpGistInnerTuple tup;
	unsigned int size;
	unsigned int prefixSize;
	int			i;
	char	   *ptr;

	/* Compute size needed */
	if (hasPrefix)
		prefixSize = FUNC3(&state->attPrefixType, prefix);
	else
		prefixSize = 0;

	size = SGITHDRSZ + prefixSize;

	/* Note: we rely on node tuple sizes to be maxaligned already */
	for (i = 0; i < nNodes; i++)
		size += FUNC0(nodes[i]);

	/*
	 * Ensure that we can replace the tuple with a dead tuple later.  This
	 * test is unnecessary given current tuple layouts, but let's be safe.
	 */
	if (size < SGDTSIZE)
		size = SGDTSIZE;

	/*
	 * Inner tuple should be small enough to fit on a page
	 */
	if (size > SPGIST_PAGE_CAPACITY - sizeof(ItemIdData))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC8("SP-GiST inner tuple size %zu exceeds maximum %zu",
						(Size) size,
						SPGIST_PAGE_CAPACITY - sizeof(ItemIdData)),
				 FUNC7("Values larger than a buffer page cannot be indexed.")));

	/*
	 * Check for overflow of header fields --- probably can't fail if the
	 * above succeeded, but let's be paranoid
	 */
	if (size > SGITMAXSIZE ||
		prefixSize > SGITMAXPREFIXSIZE ||
		nNodes > SGITMAXNNODES)
		FUNC4(ERROR, "SPGiST inner tuple header field is too small");

	/* OK, form the tuple */
	tup = (SpGistInnerTuple) FUNC11(size);

	tup->nNodes = nNodes;
	tup->prefixSize = prefixSize;
	tup->size = size;

	if (hasPrefix)
		FUNC10(FUNC1(tup), &state->attPrefixType, prefix);

	ptr = (char *) FUNC2(tup);

	for (i = 0; i < nNodes; i++)
	{
		SpGistNodeTuple node = nodes[i];

		FUNC9(ptr, node, FUNC0(node));
		ptr += FUNC0(node);
	}

	return tup;
}