#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  emit; int /*<<< orphan*/  blocks; } ;
struct TYPE_5__ {scalar_t__ num; TYPE_1__ func; int /*<<< orphan*/  opaque; void** nonce; } ;
typedef  TYPE_2__ POLY1305 ;

/* Variables and functions */
 void* FUNC0 (unsigned char const*) ; 
 int /*<<< orphan*/  poly1305_blocks ; 
 int /*<<< orphan*/  poly1305_emit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,...) ; 

void FUNC2(POLY1305 *ctx, const unsigned char key[32])
{
    ctx->nonce[0] = FUNC0(&key[16]);
    ctx->nonce[1] = FUNC0(&key[20]);
    ctx->nonce[2] = FUNC0(&key[24]);
    ctx->nonce[3] = FUNC0(&key[28]);

#ifndef POLY1305_ASM
    FUNC1(ctx->opaque, key);
#else
    /*
     * Unlike reference poly1305_init assembly counterpart is expected
     * to return a value: non-zero if it initializes ctx->func, and zero
     * otherwise. Latter is to simplify assembly in cases when there no
     * multiple code paths to switch between.
     */
    if (!poly1305_init(ctx->opaque, key, &ctx->func)) {
        ctx->func.blocks = poly1305_blocks;
        ctx->func.emit = poly1305_emit;
    }
#endif

    ctx->num = 0;

}