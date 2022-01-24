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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int Oid ;

/* Variables and functions */
 int /*<<< orphan*/  TRUNCATE_CASCADE ; 
 int /*<<< orphan*/  TRUNCATE_RESTART_SEQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(StringInfo out,
						  int nrelids,
						  Oid relids[],
						  bool cascade, bool restart_seqs)
{
	int			i;
	uint8		flags = 0;

	FUNC0(out, 'T');		/* action TRUNCATE */

	FUNC1(out, nrelids);

	/* encode and send truncate flags */
	if (cascade)
		flags |= TRUNCATE_CASCADE;
	if (restart_seqs)
		flags |= TRUNCATE_RESTART_SEQS;
	FUNC2(out, flags);

	for (i = 0; i < nrelids; i++)
		FUNC1(out, relids[i]);
}