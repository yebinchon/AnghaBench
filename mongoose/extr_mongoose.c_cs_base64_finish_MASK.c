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
struct cs_base64_ctx {scalar_t__ chunk_size; int /*<<< orphan*/  user_data; int /*<<< orphan*/  (* b64_putc ) (char,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * chunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs_base64_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 

void FUNC3(struct cs_base64_ctx *ctx) {
  if (ctx->chunk_size > 0) {
    int i;
    FUNC1(&ctx->chunk[ctx->chunk_size], 0, 3 - ctx->chunk_size);
    FUNC0(ctx);
    for (i = 0; i < (3 - ctx->chunk_size); i++) {
      ctx->b64_putc('=', ctx->user_data);
    }
  }
}