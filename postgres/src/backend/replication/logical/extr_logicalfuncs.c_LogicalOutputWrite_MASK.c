#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_7__ {int /*<<< orphan*/  returned_rows; int /*<<< orphan*/  tupdesc; int /*<<< orphan*/  tupstore; int /*<<< orphan*/  binary_output; } ;
struct TYPE_6__ {TYPE_1__* out; scalar_t__ output_writer_private; } ;
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ LogicalDecodingContext ;
typedef  TYPE_3__ DecodingOutputState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MaxAllocSize ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC10(LogicalDecodingContext *ctx, XLogRecPtr lsn, TransactionId xid,
				   bool last_write)
{
	Datum		values[3];
	bool		nulls[3];
	DecodingOutputState *p;

	/* SQL Datums can only be of a limited length... */
	if (ctx->out->len > MaxAllocSize - VARHDRSZ)
		FUNC6(ERROR, "too much output for sql interface");

	p = (DecodingOutputState *) ctx->output_writer_private;

	FUNC7(nulls, 0, sizeof(nulls));
	values[0] = FUNC2(lsn);
	values[1] = FUNC4(xid);

	/*
	 * Assert ctx->out is in database encoding when we're writing textual
	 * output.
	 */
	if (!p->binary_output)
		FUNC0(FUNC8(FUNC1(),
							   ctx->out->data, ctx->out->len,
							   false));

	/* ick, but cstring_to_text_with_len works for bytea perfectly fine */
	values[2] = FUNC3(
								FUNC5(ctx->out->data, ctx->out->len));

	FUNC9(p->tupstore, p->tupdesc, values, nulls);
	p->returned_rows++;
}