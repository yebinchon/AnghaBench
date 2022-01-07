
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int enc; size_t ivlen; size_t keylen; TYPE_1__* hw; } ;
struct TYPE_6__ {TYPE_3__ base; int iv_state; } ;
struct TYPE_5__ {int (* init ) (TYPE_3__*,unsigned char const*,size_t) ;} ;
typedef TYPE_2__ PROV_AES_OCB_CTX ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int IV_STATE_BUFFERED ;
 size_t OCB_MAX_IV_LEN ;
 size_t OCB_MIN_IV_LEN ;
 int PROV_R_INVALID_IV_LENGTH ;
 int PROV_R_INVALID_KEY_LENGTH ;
 int cipher_generic_initiv (TYPE_3__*,unsigned char const*,size_t) ;
 int stub1 (TYPE_3__*,unsigned char const*,size_t) ;

__attribute__((used)) static int aes_ocb_init(void *vctx, const unsigned char *key, size_t keylen,
                        const unsigned char *iv, size_t ivlen, int enc)
{
   PROV_AES_OCB_CTX *ctx = (PROV_AES_OCB_CTX *)vctx;

   ctx->base.enc = enc;

   if (iv != ((void*)0)) {
       if (ivlen != ctx->base.ivlen) {

           if (ivlen < OCB_MIN_IV_LEN || ivlen > OCB_MAX_IV_LEN) {
               ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_IV_LENGTH);
               return 0;
           }
           ctx->base.ivlen = ivlen;
       }
       if (!cipher_generic_initiv(&ctx->base, iv, ivlen))
           return 0;
       ctx->iv_state = IV_STATE_BUFFERED;
   }
   if (key != ((void*)0)) {
       if (keylen != ctx->base.keylen) {
           ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
           return 0;
       }
       return ctx->base.hw->init(&ctx->base, key, keylen);
   }
   return 1;
}
