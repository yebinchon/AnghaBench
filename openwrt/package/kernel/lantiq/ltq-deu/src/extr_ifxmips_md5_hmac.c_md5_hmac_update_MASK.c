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
typedef  unsigned int u32 ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct md5_hmac_ctx {int byte_count; char* block; } ;

/* Variables and functions */
 struct md5_hmac_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct shash_desc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,unsigned int const) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const u8 *data, unsigned int len)
{
    struct md5_hmac_ctx *mctx = FUNC0(desc->tfm);
    const u32 avail = sizeof(mctx->block) - (mctx->byte_count & 0x3f);

    mctx->byte_count += len;
    
    if (avail > len) {
        FUNC2((char *)mctx->block + (sizeof(mctx->block) - avail),
               data, len);
        return 0;
    }

    FUNC2((char *)mctx->block + (sizeof(mctx->block) - avail),
           data, avail);

    FUNC1(desc, mctx->block);
    data += avail;
    len -= avail;

    while (len >= sizeof(mctx->block)) {
        FUNC2(mctx->block, data, sizeof(mctx->block));
        FUNC1(desc, mctx->block);
        data += sizeof(mctx->block);
        len -= sizeof(mctx->block);
    }

    FUNC2(mctx->block, data, len);
    return 0;    
}