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
typedef  int uint64_t ;
struct sha512_ctx {int buflen; int* total; int* H; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  fillbuf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,struct sha512_ctx*) ; 

__attribute__((used)) static void * FUNC3 (struct sha512_ctx *ctx, void *resbuf) {
	/* Take yet unprocessed bytes into account.  */
	uint64_t bytes = ctx->buflen;
	size_t pad;
	unsigned int i;

	/* Now count remaining bytes.  */
	ctx->total[0] += bytes;
	if (ctx->total[0] < bytes) {
		++ctx->total[1];
	}

	pad = bytes >= 112 ? 128 + 112 - (size_t)bytes : 112 - (size_t)bytes;
	FUNC1(&ctx->buffer[bytes], fillbuf, pad);

	/* Put the 128-bit file length in *bits* at the end of the buffer.  */
	*(uint64_t *) &ctx->buffer[bytes + pad + 8] = FUNC0(ctx->total[0] << 3);
	*(uint64_t *) &ctx->buffer[bytes + pad] = FUNC0((ctx->total[1] << 3) |
						(ctx->total[0] >> 61));

	/* Process last bytes.  */
	FUNC2(ctx->buffer, (size_t)(bytes + pad + 16), ctx);

	/* Put result from CTX in first 64 bytes following RESBUF.  */
	for (i = 0; i < 8; ++i) {
		((uint64_t *) resbuf)[i] = FUNC0(ctx->H[i]);
	}

	return resbuf;
}