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
typedef  int uint8 ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int TRUNCATE_CASCADE ; 
 int TRUNCATE_RESTART_SEQS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 

List *
FUNC2(StringInfo in,
						 bool *cascade, bool *restart_seqs)
{
	int			i;
	int			nrelids;
	List	   *relids = NIL;
	uint8		flags;

	nrelids = FUNC1(in, 4);

	/* read and decode truncate flags */
	flags = FUNC1(in, 1);
	*cascade = (flags & TRUNCATE_CASCADE) > 0;
	*restart_seqs = (flags & TRUNCATE_RESTART_SEQS) > 0;

	for (i = 0; i < nrelids; i++)
		relids = FUNC0(relids, FUNC1(in, 4));

	return relids;
}