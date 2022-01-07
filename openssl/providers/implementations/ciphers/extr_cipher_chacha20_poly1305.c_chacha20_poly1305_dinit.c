
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hw; } ;
struct TYPE_4__ {int (* initiv ) (TYPE_2__*) ;} ;
typedef TYPE_1__ PROV_CIPHER_HW_CHACHA20_POLY1305 ;
typedef TYPE_2__ PROV_CIPHER_CTX ;


 int cipher_generic_dinit (void*,unsigned char const*,size_t,unsigned char const*,size_t) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int chacha20_poly1305_dinit(void *vctx, const unsigned char *key,
                                  size_t keylen, const unsigned char *iv,
                                  size_t ivlen)
{
    int ret;

    ret = cipher_generic_dinit(vctx, key, keylen, iv, ivlen);
    if (ret && iv != ((void*)0)) {
        PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
        PROV_CIPHER_HW_CHACHA20_POLY1305 *hw =
            (PROV_CIPHER_HW_CHACHA20_POLY1305 *)ctx->hw;

        hw->initiv(ctx);
    }
    return ret;
}
