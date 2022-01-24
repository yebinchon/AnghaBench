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
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_3__ {void* iv1; void* iv0; } ;
typedef  TYPE_1__ BlowfishContext ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*) ; 

void
FUNC1(BlowfishContext *ctx, const uint8 *iv)
{
	ctx->iv0 = FUNC0(iv);
	ctx->iv1 = FUNC0(iv + 4);
}