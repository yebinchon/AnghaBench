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
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ src; TYPE_2__ dst; int /*<<< orphan*/  iv; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;
struct aes_ctx {int /*<<< orphan*/  nonce; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  CRYPTO_DIR_ENCRYPT ; 
 int CTR_RFC3686_IV_SIZE ; 
 int CTR_RFC3686_NONCE_SIZE ; 
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct aes_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aes_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct blkcipher_desc *desc,
               struct scatterlist *dst, struct scatterlist *src,
               unsigned int nbytes)
{
    struct aes_ctx *ctx = FUNC4(desc->tfm);
    struct blkcipher_walk walk;
    int err, bsize = nbytes;
    u8 rfc3686_iv[16];

    FUNC1(&walk, dst, src, nbytes);
    err = FUNC2(desc, &walk);
    
    /* set up counter block */
    FUNC6(rfc3686_iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE); 
    FUNC6(rfc3686_iv + CTR_RFC3686_NONCE_SIZE, walk.iv, CTR_RFC3686_IV_SIZE);

    /* initialize counter portion of counter block */
    *(__be32 *)(rfc3686_iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
        FUNC3(1);

    /* scatterlist source is the same size as request size, just process once */
    if (nbytes == walk.nbytes) {
	FUNC5(ctx, walk.dst.virt.addr, walk.src.virt.addr,
			rfc3686_iv, nbytes, CRYPTO_DIR_ENCRYPT, 0);
	nbytes -= walk.nbytes;
	err = FUNC0(desc, &walk, nbytes);
	return err;
    }

    while ((nbytes = walk.nbytes) && (walk.nbytes >= AES_BLOCK_SIZE)) {
	FUNC5(ctx, walk.dst.virt.addr, walk.src.virt.addr,
			rfc3686_iv, nbytes, CRYPTO_DIR_ENCRYPT, 0);

	nbytes -= walk.nbytes;
	bsize -= walk.nbytes;
	err = FUNC0(desc, &walk, nbytes);
    }

    /* to handle remaining bytes < AES_BLOCK_SIZE */
    if (walk.nbytes) {
	FUNC5(ctx, walk.dst.virt.addr, walk.src.virt.addr,
			rfc3686_iv, walk.nbytes, CRYPTO_DIR_ENCRYPT, 0);
	err = FUNC0(desc, &walk, 0);
    }
   
    return err;
}