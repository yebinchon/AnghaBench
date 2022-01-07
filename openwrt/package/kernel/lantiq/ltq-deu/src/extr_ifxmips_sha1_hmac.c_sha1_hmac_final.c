
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct shash_desc {int tfm; } ;
struct sha1_hmac_ctx {int count; int dbn; int * buffer; } ;
struct TYPE_2__ {int GO; int DGRY; scalar_t__ BSY; } ;
struct deu_hash_t {int DBN; int MR; int D1R; int D2R; int D3R; int D4R; int D5R; TYPE_1__ controlr; } ;


 int CRTCL_SECT_END ;
 int CRTCL_SECT_START ;
 int HASH_CON_VALUE ;
 scalar_t__ HASH_START ;
 int * IFX_HASH_CON ;
 int SHA1_HMAC_BLOCK_SIZE ;
 struct sha1_hmac_ctx* crypto_shash_ctx (int ) ;
 int memset (int *,int ,int ) ;
 int sha1_hmac_update (struct shash_desc*,int const*,int) ;
 int* temp ;

__attribute__((used)) static int sha1_hmac_final(struct shash_desc *desc, u8 *out)
{

    struct sha1_hmac_ctx *sctx = crypto_shash_ctx(desc->tfm);
    u32 index, padlen;
    u64 t;
    u8 bits[8] = { 0, };
    static const u8 padding[64] = { 0x80, };
    volatile struct deu_hash_t *hashs = (struct deu_hash_t *) HASH_START;
    unsigned long flag;
    int i = 0;
    int dbn;
    u32 *in = &temp[0];

    t = sctx->count + 512;
    bits[7] = 0xff & t;
    t >>= 8;
    bits[6] = 0xff & t;
    t >>= 8;
    bits[5] = 0xff & t;
    t >>= 8;
    bits[4] = 0xff & t;
    t >>= 8;
    bits[3] = 0xff & t;
    t >>= 8;
    bits[2] = 0xff & t;
    t >>= 8;
    bits[1] = 0xff & t;
    t >>= 8;
    bits[0] = 0xff & t;


    index = (sctx->count >> 3) & 0x3f;
    padlen = (index < 56) ? (56 - index) : ((64 + 56) - index);
    sha1_hmac_update (desc, padding, padlen);


    sha1_hmac_update (desc, bits, sizeof bits);

    CRTCL_SECT_START;

    hashs->DBN = sctx->dbn;


    *IFX_HASH_CON = HASH_CON_VALUE;


    while (hashs->controlr.BSY) {

    }

    for (dbn = 0; dbn < sctx->dbn; dbn++)
    {
    for (i = 0; i < 16; i++) {
        hashs->MR = in[i];
    };

    hashs->controlr.GO = 1;
    asm("sync");


    while (hashs->controlr.BSY) {

    }

    in += 16;
}




    while (! hashs->controlr.DGRY) {

    }


    *((u32 *) out + 0) = hashs->D1R;
    *((u32 *) out + 1) = hashs->D2R;
    *((u32 *) out + 2) = hashs->D3R;
    *((u32 *) out + 3) = hashs->D4R;
    *((u32 *) out + 4) = hashs->D5R;

    memset(&sctx->buffer[0], 0, SHA1_HMAC_BLOCK_SIZE);
    sctx->count = 0;


    CRTCL_SECT_END;


    return 0;

}
