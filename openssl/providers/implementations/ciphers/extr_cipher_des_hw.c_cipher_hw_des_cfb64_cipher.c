
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num; int enc; scalar_t__ iv; } ;
struct TYPE_5__ {int ks; } ;
struct TYPE_6__ {TYPE_1__ dks; } ;
typedef TYPE_2__ PROV_DES_CTX ;
typedef TYPE_3__ PROV_CIPHER_CTX ;
typedef int DES_key_schedule ;
typedef int DES_cblock ;


 int DES_cfb64_encrypt (unsigned char const*,unsigned char*,long,int *,int *,int*,int ) ;
 size_t MAXCHUNK ;

__attribute__((used)) static int cipher_hw_des_cfb64_cipher(PROV_CIPHER_CTX *ctx, unsigned char *out,
                                      const unsigned char *in, size_t len)
{
    size_t chunk = MAXCHUNK;
    DES_key_schedule *key = &(((PROV_DES_CTX *)ctx)->dks.ks);
    int num = ctx->num;

    if (len < chunk)
        chunk = len;
    while (len > 0 && len >= chunk) {
        DES_cfb64_encrypt(in, out, (long)chunk, key, (DES_cblock *)ctx->iv,
                          &num, ctx->enc);
        len -= chunk;
        in += chunk;
        out += chunk;
        if (len < chunk)
            chunk = len;
    }
    ctx->num = num;
    return 1;
}
