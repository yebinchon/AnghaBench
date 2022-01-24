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
typedef  int uint32_t ;
struct TYPE_3__ {int* bits; unsigned char* in; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ cs_md5_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,size_t) ; 

void FUNC3(cs_md5_ctx *ctx, const unsigned char *buf, size_t len) {
  uint32_t t;

  t = ctx->bits[0];
  if ((ctx->bits[0] = t + ((uint32_t) len << 3)) < t) ctx->bits[1]++;
  ctx->bits[1] += (uint32_t) len >> 29;

  t = (t >> 3) & 0x3f;

  if (t) {
    unsigned char *p = (unsigned char *) ctx->in + t;

    t = 64 - t;
    if (len < t) {
      FUNC2(p, buf, len);
      return;
    }
    FUNC2(p, buf, t);
    FUNC0(ctx->in, 16);
    FUNC1(ctx->buf, (uint32_t *) ctx->in);
    buf += t;
    len -= t;
  }

  while (len >= 64) {
    FUNC2(ctx->in, buf, 64);
    FUNC0(ctx->in, 16);
    FUNC1(ctx->buf, (uint32_t *) ctx->in);
    buf += 64;
    len -= 64;
  }

  FUNC2(ctx->in, buf, len);
}