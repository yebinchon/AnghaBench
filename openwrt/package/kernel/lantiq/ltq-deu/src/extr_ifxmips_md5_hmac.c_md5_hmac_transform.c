
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shash_desc {int tfm; } ;
struct md5_hmac_ctx {int dbn; } ;


 int MD5_HMAC_DBN_TEMP_SIZE ;
 struct md5_hmac_ctx* crypto_shash_ctx (int ) ;
 int memcpy (int *,int const*,int) ;
 int printk (char*) ;
 int * temp ;

__attribute__((used)) static void md5_hmac_transform(struct shash_desc *desc, u32 const *in)
{
    struct md5_hmac_ctx *mctx = crypto_shash_ctx(desc->tfm);

    memcpy(&temp[mctx->dbn<<4], in, 64);
    mctx->dbn += 1;

    if ( (mctx->dbn<<4) > MD5_HMAC_DBN_TEMP_SIZE )
    {
        printk("MD5_HMAC_DBN_TEMP_SIZE exceeded\n");
    }

}
