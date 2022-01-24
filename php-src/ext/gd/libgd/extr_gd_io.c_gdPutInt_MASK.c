#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* putC ) (TYPE_1__*,unsigned char) ;} ;
typedef  TYPE_1__ gdIOCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned char) ; 

void FUNC6 (int w, gdIOCtx * ctx)
{
	FUNC0 (FUNC1("Putting int..."));
	(ctx->putC) (ctx, (unsigned char) (w >> 24));
	(ctx->putC) (ctx, (unsigned char) ((w >> 16) & 0xFF));
	(ctx->putC) (ctx, (unsigned char) ((w >> 8) & 0xFF));
	(ctx->putC) (ctx, (unsigned char) (w & 0xFF));
	FUNC0 (FUNC1("put."));
}