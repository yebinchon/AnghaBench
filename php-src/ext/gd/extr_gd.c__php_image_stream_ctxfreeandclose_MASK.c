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
struct gdIOCtx {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gdIOCtx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct gdIOCtx *ctx) /* {{{ */
{

	if(ctx->data) {
		FUNC1((php_stream *) ctx->data);
		ctx->data = NULL;
	}
	if(ctx) {
		FUNC0(ctx);
	}
}