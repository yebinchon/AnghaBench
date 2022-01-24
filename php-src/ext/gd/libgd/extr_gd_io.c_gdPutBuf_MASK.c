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
struct TYPE_4__ {int (* putBuf ) (TYPE_1__*,void const*,int) ;} ;
typedef  TYPE_1__ gdIOCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,void const*,int) ; 

int FUNC3 (const void *buf, int size, gdIOCtx * ctx)
{
	FUNC0 (FUNC1("Putting buf..."));
	return (ctx->putBuf) (ctx, buf, size);
	FUNC0 (FUNC1("put."));
}