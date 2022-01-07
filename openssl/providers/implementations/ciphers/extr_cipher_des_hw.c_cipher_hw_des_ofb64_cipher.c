
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num; scalar_t__ iv; } ;
struct TYPE_5__ {int ks; } ;
struct TYPE_6__ {TYPE_1__ dks; } ;
typedef TYPE_2__ PROV_DES_CTX ;
typedef TYPE_3__ PROV_CIPHER_CTX ;
typedef int DES_key_schedule ;
typedef int DES_cblock ;


 int DES_ofb64_encrypt (unsigned char const*,unsigned char*,long,int *,int *,int*) ;
 size_t MAXCHUNK ;

__attribute__((used)) static int cipher_hw_des_ofb64_cipher(PROV_CIPHER_CTX *ctx, unsigned char *out,
                                      const unsigned char *in, size_t len)
{
    int num = ctx->num;
    DES_key_schedule *key = &(((PROV_DES_CTX *)ctx)->dks.ks);

    while (len >= MAXCHUNK) {
        DES_ofb64_encrypt(in, out, MAXCHUNK, key, (DES_cblock *)ctx->iv, &num);
        len -= MAXCHUNK;
        in += MAXCHUNK;
        out += MAXCHUNK;
    }
    if (len > 0) {
        DES_ofb64_encrypt(in, out, (long)len, key, (DES_cblock *)ctx->iv, &num);
    }
    ctx->num = num;
    return 1;
}
