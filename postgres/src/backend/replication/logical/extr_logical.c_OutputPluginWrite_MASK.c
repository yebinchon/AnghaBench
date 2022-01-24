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
struct LogicalDecodingContext {int prepared_write; int /*<<< orphan*/  write_xid; int /*<<< orphan*/  write_location; int /*<<< orphan*/  (* write ) (struct LogicalDecodingContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct LogicalDecodingContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct LogicalDecodingContext *ctx, bool last_write)
{
	if (!ctx->prepared_write)
		FUNC0(ERROR, "OutputPluginPrepareWrite needs to be called before OutputPluginWrite");

	ctx->write(ctx, ctx->write_location, ctx->write_xid, last_write);
	ctx->prepared_write = false;
}