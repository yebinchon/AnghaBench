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
typedef  int /*<<< orphan*/ * SMgrRelation ;
typedef  int /*<<< orphan*/  RelFileNodeBackend ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/ * SMgrRelationHash ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(RelFileNodeBackend rnode)
{
	SMgrRelation reln;

	/* Nothing to do if hashtable not set up */
	if (SMgrRelationHash == NULL)
		return;

	reln = (SMgrRelation) FUNC0(SMgrRelationHash,
									  (void *) &rnode,
									  HASH_FIND, NULL);
	if (reln != NULL)
		FUNC1(reln);
}