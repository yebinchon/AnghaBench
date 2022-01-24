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
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ src; TYPE_2__ dst; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;
struct arc4_ctx {int dummy; } ;

/* Variables and functions */
 int ARC4_BLOCK_SIZE ; 
 int /*<<< orphan*/  CRYPTO_DIR_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct arc4_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC4 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 struct arc4_ctx* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct blkcipher_desc *desc,
                           struct scatterlist *dst, struct scatterlist *src,
                           unsigned int nbytes)
{
        struct arc4_ctx *ctx = FUNC5(desc->tfm);
        struct blkcipher_walk walk;
        int err;

        FUNC0(1, "\n");
        FUNC3(&walk, dst, src, nbytes);
        err = FUNC4(desc, &walk);

        while ((nbytes = walk.nbytes)) {
                FUNC1(ctx, walk.dst.virt.addr, walk.src.virt.addr, 
                               NULL, nbytes, CRYPTO_DIR_ENCRYPT, 0);
                nbytes &= ARC4_BLOCK_SIZE - 1;
                err = FUNC2(desc, &walk, nbytes);
        }

        return err;
}