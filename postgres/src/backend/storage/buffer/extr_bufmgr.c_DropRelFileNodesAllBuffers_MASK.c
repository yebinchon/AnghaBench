#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_10__ {int /*<<< orphan*/  rnode; } ;
struct TYPE_12__ {TYPE_1__ tag; } ;
struct TYPE_11__ {scalar_t__ backend; int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ RelFileNodeBackend ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  TYPE_3__ BufferDesc ;

/* Variables and functions */
 int DROP_RELS_BSEARCH_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ MyBackendId ; 
 int NBuffers ; 
 scalar_t__ FUNC4 (TYPE_2__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (void const*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnode_comparator ; 

void
FUNC11(RelFileNodeBackend *rnodes, int nnodes)
{
	int			i,
				n = 0;
	RelFileNode *nodes;
	bool		use_bsearch;

	if (nnodes == 0)
		return;

	nodes = FUNC8(sizeof(RelFileNode) * nnodes);	/* non-local relations */

	/* If it's a local relation, it's localbuf.c's problem. */
	for (i = 0; i < nnodes; i++)
	{
		if (FUNC4(rnodes[i]))
		{
			if (rnodes[i].backend == MyBackendId)
				FUNC0(rnodes[i].node);
		}
		else
			nodes[n++] = rnodes[i].node;
	}

	/*
	 * If there are no non-local relations, then we're done. Release the
	 * memory and return.
	 */
	if (n == 0)
	{
		FUNC9(nodes);
		return;
	}

	/*
	 * For low number of relations to drop just use a simple walk through, to
	 * save the bsearch overhead. The threshold to use is rather a guess than
	 * an exactly determined value, as it depends on many factors (CPU and RAM
	 * speeds, amount of shared buffers etc.).
	 */
	use_bsearch = n > DROP_RELS_BSEARCH_THRESHOLD;

	/* sort the list of rnodes if necessary */
	if (use_bsearch)
		FUNC10(nodes, n, sizeof(RelFileNode), rnode_comparator);

	for (i = 0; i < NBuffers; i++)
	{
		RelFileNode *rnode = NULL;
		BufferDesc *bufHdr = FUNC1(i);
		uint32		buf_state;

		/*
		 * As in DropRelFileNodeBuffers, an unlocked precheck should be safe
		 * and saves some cycles.
		 */

		if (!use_bsearch)
		{
			int			j;

			for (j = 0; j < n; j++)
			{
				if (FUNC5(bufHdr->tag.rnode, nodes[j]))
				{
					rnode = &nodes[j];
					break;
				}
			}
		}
		else
		{
			rnode = FUNC7((const void *) &(bufHdr->tag.rnode),
							nodes, n, sizeof(RelFileNode),
							rnode_comparator);
		}

		/* buffer doesn't belong to any of the given relfilenodes; skip it */
		if (rnode == NULL)
			continue;

		buf_state = FUNC3(bufHdr);
		if (FUNC5(bufHdr->tag.rnode, (*rnode)))
			FUNC2(bufHdr);	/* releases spinlock */
		else
			FUNC6(bufHdr, buf_state);
	}

	FUNC9(nodes);
}