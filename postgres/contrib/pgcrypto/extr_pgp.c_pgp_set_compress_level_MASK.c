#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int compress_level; } ;
typedef  TYPE_1__ PGP_Context ;

/* Variables and functions */
 int PXE_ARGUMENT_ERROR ; 

int
FUNC0(PGP_Context *ctx, int level)
{
	if (level >= 0 && level <= 9)
	{
		ctx->compress_level = level;
		return 0;
	}
	return PXE_ARGUMENT_ERROR;
}