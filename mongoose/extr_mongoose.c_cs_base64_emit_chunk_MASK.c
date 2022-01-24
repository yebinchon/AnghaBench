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
struct cs_base64_ctx {int* chunk; int chunk_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cs_base64_ctx*,int) ; 

__attribute__((used)) static void FUNC1(struct cs_base64_ctx *ctx) {
  int a, b, c;

  a = ctx->chunk[0];
  b = ctx->chunk[1];
  c = ctx->chunk[2];

  FUNC0(ctx, a >> 2);
  FUNC0(ctx, ((a & 3) << 4) | (b >> 4));
  if (ctx->chunk_size > 1) {
    FUNC0(ctx, (b & 15) << 2 | (c >> 6));
  }
  if (ctx->chunk_size > 2) {
    FUNC0(ctx, c & 63);
  }
}