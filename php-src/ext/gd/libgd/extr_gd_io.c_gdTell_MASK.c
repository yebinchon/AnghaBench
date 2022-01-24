#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long (* tell ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ gdIOCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long FUNC2 (TYPE_1__*) ; 

long FUNC3 (gdIOCtx * ctx)
{
	FUNC0 (FUNC1("Telling..."));
	return ((ctx->tell) (ctx));
	FUNC0 (FUNC1 ("told."));
}