
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t keylen; int libctx; } ;
typedef TYPE_1__ PROV_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_set_odd_parity (int *) ;
 scalar_t__ rand_priv_bytes_ex (int ,void*,size_t) ;

__attribute__((used)) static int tdes_generatekey(PROV_CIPHER_CTX *ctx, void *ptr)
{

    DES_cblock *deskey = ptr;
    size_t kl = ctx->keylen;

    if (kl == 0 || rand_priv_bytes_ex(ctx->libctx, ptr, kl) <= 0)
        return 0;
    DES_set_odd_parity(deskey);
    if (kl >= 16)
        DES_set_odd_parity(deskey + 1);
    if (kl >= 24) {
        DES_set_odd_parity(deskey + 2);
        return 1;
    }
    return 0;
}
