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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct sha1_hmac_ctx {int count; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 struct sha1_hmac_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct shash_desc*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const u8 *data,
            unsigned int len)
{
    struct sha1_hmac_ctx *sctx =  FUNC0(desc->tfm);
    unsigned int i, j;

    j = (sctx->count >> 3) & 0x3f;
    sctx->count += len << 3;
   // printk("sctx->count = %d\n", sctx->count);

    if ((j + len) > 63) {
        FUNC1 (&sctx->buffer[j], data, (i = 64 - j));
        FUNC2 (desc, (const u32 *)sctx->buffer);
        for (; i + 63 < len; i += 64) {
            FUNC2 (desc, (const u32 *)&data[i]);
        }

        j = 0;
    }
    else
        i = 0;

    FUNC1 (&sctx->buffer[j], &data[i], len - i);
    return 0;
}