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
typedef  int /*<<< orphan*/  pg_sha512_ctx ;
struct TYPE_6__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* reset ) (TYPE_2__*) ;int /*<<< orphan*/  free; int /*<<< orphan*/  finish; int /*<<< orphan*/  update; int /*<<< orphan*/  block_size; int /*<<< orphan*/  result_size; TYPE_1__ p; } ;
typedef  TYPE_2__ PX_MD ;

/* Variables and functions */
 int /*<<< orphan*/  int_sha512_block_len ; 
 int /*<<< orphan*/  int_sha512_finish ; 
 int /*<<< orphan*/  int_sha512_free ; 
 int /*<<< orphan*/  int_sha512_len ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  int_sha512_update ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void
FUNC4(PX_MD *md)
{
	pg_sha512_ctx *ctx;

	ctx = FUNC2(sizeof(*ctx));
	FUNC1(ctx, 0, sizeof(*ctx));

	md->p.ptr = ctx;

	md->result_size = int_sha512_len;
	md->block_size = int_sha512_block_len;
	md->reset = int_sha512_reset;
	md->update = int_sha512_update;
	md->finish = int_sha512_finish;
	md->free = int_sha512_free;

	md->reset(md);
}