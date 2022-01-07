
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ivlen; int iv_set; int oiv; int iv; } ;
typedef TYPE_1__ PROV_CIPHER_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int PROV_R_INVALID_IVLEN ;
 int memcpy (int ,unsigned char const*,size_t) ;

int cipher_generic_initiv(PROV_CIPHER_CTX *ctx, const unsigned char *iv,
                          size_t ivlen)
{
    if (ivlen != ctx->ivlen
        || ivlen > sizeof(ctx->iv)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IVLEN);
        return 0;
    }
    ctx->iv_set = 1;
    memcpy(ctx->iv, iv, ivlen);
    memcpy(ctx->oiv, iv, ivlen);
    return 1;
}
