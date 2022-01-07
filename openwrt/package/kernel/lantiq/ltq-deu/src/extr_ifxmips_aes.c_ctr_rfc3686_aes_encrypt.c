
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct scatterlist {int dummy; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ src; TYPE_2__ dst; int iv; } ;
struct blkcipher_desc {int tfm; } ;
struct aes_ctx {int nonce; } ;
typedef int __be32 ;


 unsigned int AES_BLOCK_SIZE ;
 int CRYPTO_DIR_ENCRYPT ;
 int CTR_RFC3686_IV_SIZE ;
 int CTR_RFC3686_NONCE_SIZE ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int cpu_to_be32 (int) ;
 struct aes_ctx* crypto_blkcipher_ctx (int ) ;
 int ifx_deu_aes_ctr (struct aes_ctx*,int ,int ,int *,unsigned int,int ,int ) ;
 int memcpy (int *,int ,int) ;

int ctr_rfc3686_aes_encrypt(struct blkcipher_desc *desc,
               struct scatterlist *dst, struct scatterlist *src,
               unsigned int nbytes)
{
    struct aes_ctx *ctx = crypto_blkcipher_ctx(desc->tfm);
    struct blkcipher_walk walk;
    int err, bsize = nbytes;
    u8 rfc3686_iv[16];

    blkcipher_walk_init(&walk, dst, src, nbytes);
    err = blkcipher_walk_virt(desc, &walk);


    memcpy(rfc3686_iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE);
    memcpy(rfc3686_iv + CTR_RFC3686_NONCE_SIZE, walk.iv, CTR_RFC3686_IV_SIZE);


    *(__be32 *)(rfc3686_iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
        cpu_to_be32(1);


    if (nbytes == walk.nbytes) {
 ifx_deu_aes_ctr(ctx, walk.dst.virt.addr, walk.src.virt.addr,
   rfc3686_iv, nbytes, CRYPTO_DIR_ENCRYPT, 0);
 nbytes -= walk.nbytes;
 err = blkcipher_walk_done(desc, &walk, nbytes);
 return err;
    }

    while ((nbytes = walk.nbytes) && (walk.nbytes >= AES_BLOCK_SIZE)) {
 ifx_deu_aes_ctr(ctx, walk.dst.virt.addr, walk.src.virt.addr,
   rfc3686_iv, nbytes, CRYPTO_DIR_ENCRYPT, 0);

 nbytes -= walk.nbytes;
 bsize -= walk.nbytes;
 err = blkcipher_walk_done(desc, &walk, nbytes);
    }


    if (walk.nbytes) {
 ifx_deu_aes_ctr(ctx, walk.dst.virt.addr, walk.src.virt.addr,
   rfc3686_iv, walk.nbytes, CRYPTO_DIR_ENCRYPT, 0);
 err = blkcipher_walk_done(desc, &walk, 0);
    }

    return err;
}
