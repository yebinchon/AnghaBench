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
struct TYPE_9__ {int /*<<< orphan*/  out; } ;
struct TYPE_8__ {scalar_t__ origin_id; int /*<<< orphan*/  origin_lsn; } ;
typedef  TYPE_1__ ReorderBufferTXN ;
typedef  TYPE_2__ LogicalDecodingContext ;

/* Variables and functions */
 scalar_t__ InvalidRepOriginId ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int,char**) ; 

__attribute__((used)) static void
FUNC5(LogicalDecodingContext *ctx, ReorderBufferTXN *txn)
{
	bool		send_replication_origin = txn->origin_id != InvalidRepOriginId;

	FUNC0(ctx, !send_replication_origin);
	FUNC2(ctx->out, txn);

	if (send_replication_origin)
	{
		char	   *origin;

		/* Message boundary */
		FUNC1(ctx, false);
		FUNC0(ctx, true);

		/*----------
		 * XXX: which behaviour do we want here?
		 *
		 * Alternatives:
		 *	- don't send origin message if origin name not found
		 *	  (that's what we do now)
		 *	- throw error - that will break replication, not good
		 *	- send some special "unknown" origin
		 *----------
		 */
		if (FUNC4(txn->origin_id, true, &origin))
			FUNC3(ctx->out, origin, txn->origin_lsn);
	}

	FUNC1(ctx, true);
}