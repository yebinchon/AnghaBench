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
struct TYPE_3__ {int /*<<< orphan*/  code_off; int /*<<< orphan*/ * labels; } ;
typedef  TYPE_1__ compiler_ctx_t ;

/* Variables and functions */
 unsigned int LABEL_FLAG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 

__attribute__((used)) static void FUNC1(compiler_ctx_t *ctx, unsigned label)
{
    FUNC0(label & LABEL_FLAG);
    ctx->labels[label & ~LABEL_FLAG] = ctx->code_off;
}