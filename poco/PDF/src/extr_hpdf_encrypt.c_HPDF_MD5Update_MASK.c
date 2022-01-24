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
struct HPDF_MD5Context {int* bits; int /*<<< orphan*/ * in; int /*<<< orphan*/  buf; } ;
typedef  int HPDF_UINT32 ;
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 

void
FUNC3  (struct HPDF_MD5Context *ctx,
                 const HPDF_BYTE        *buf,
                 HPDF_UINT32            len)
{
    HPDF_UINT32 t;

    /* Update bitcount */

    t = ctx->bits[0];
    if ((ctx->bits[0] = t + ((HPDF_UINT32) len << 3)) < t)
        ctx->bits[1]++;     /* Carry from low to high */
    ctx->bits[1] += len >> 29;

    t = (t >> 3) & 0x3f; /* Bytes already in shsInfo->data */

    /* Handle any leading odd-sized chunks */

    if (t) {
        HPDF_BYTE *p = (HPDF_BYTE *) ctx->in + t;

        t = 64 - t;
        if (len < t)
        {
            FUNC0 (p, buf, len);
            return;
        }
        FUNC0 (p, buf, t);
        FUNC1 (ctx->in, 16);
        FUNC2 (ctx->buf, (HPDF_UINT32 *) ctx->in);
        buf += t;
        len -= t;
    }
    /* Process data in 64-byte chunks */

    while (len >= 64) {
        FUNC0 (ctx->in, buf, 64);
        FUNC1 (ctx->in, 16);
        FUNC2 (ctx->buf, (HPDF_UINT32 *) ctx->in);
        buf += 64;
        len -= 64;
    }

    /* Handle any remaining bytes of data. */

    FUNC0 (ctx->in, buf, len);
}