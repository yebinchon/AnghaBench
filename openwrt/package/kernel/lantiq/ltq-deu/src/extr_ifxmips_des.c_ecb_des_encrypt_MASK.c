#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct des_ctx {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ src; TYPE_2__ dst; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_DIR_ENCRYPT ; 
 unsigned int DES_BLOCK_SIZE ; 
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 struct des_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct des_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct blkcipher_desc *desc,
                    struct scatterlist *dst, struct scatterlist *src,
                    unsigned int nbytes)
{
        struct des_ctx *ctx = FUNC3(desc->tfm);
        struct blkcipher_walk walk;
        int err;
        unsigned int enc_bytes;

        FUNC1(&walk, dst, src, nbytes);
        err = FUNC2(desc, &walk);

        while ((nbytes = enc_bytes = walk.nbytes)) {
                enc_bytes -= (nbytes % DES_BLOCK_SIZE);
                FUNC4(ctx, walk.dst.virt.addr, walk.src.virt.addr, 
                               NULL, enc_bytes, CRYPTO_DIR_ENCRYPT, 0);
                nbytes &= DES_BLOCK_SIZE - 1;
                err = FUNC0(desc, &walk, nbytes);
        }

        return err;
}