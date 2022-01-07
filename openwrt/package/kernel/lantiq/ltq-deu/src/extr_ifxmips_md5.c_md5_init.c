
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shash_desc {int dummy; } ;
struct md5_ctx {scalar_t__ started; scalar_t__ byte_count; } ;
struct TYPE_2__ {int SM; int ALGO; int INIT; scalar_t__ ENDI; } ;
struct deu_hash_t {TYPE_1__ controlr; } ;


 scalar_t__ HASH_START ;
 struct md5_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int md5_init(struct shash_desc *desc)
{
    struct md5_ctx *mctx = shash_desc_ctx(desc);
    volatile struct deu_hash_t *hash = (struct deu_hash_t *) HASH_START;

    hash->controlr.ENDI = 0;
    hash->controlr.SM = 1;
    hash->controlr.ALGO = 1;
    hash->controlr.INIT = 1;

    mctx->byte_count = 0;
    mctx->started = 0;
    return 0;
}
