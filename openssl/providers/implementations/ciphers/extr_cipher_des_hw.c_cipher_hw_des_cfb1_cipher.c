
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int enc; scalar_t__ iv; } ;
struct TYPE_5__ {int ks; } ;
struct TYPE_6__ {TYPE_1__ dks; } ;
typedef TYPE_2__ PROV_DES_CTX ;
typedef TYPE_3__ PROV_CIPHER_CTX ;
typedef int DES_key_schedule ;
typedef int DES_cblock ;


 int DES_cfb_encrypt (unsigned char*,unsigned char*,int,int,int *,int *,int ) ;
 int MAXCHUNK ;

__attribute__((used)) static int cipher_hw_des_cfb1_cipher(PROV_CIPHER_CTX *ctx, unsigned char *out,
                                     const unsigned char *in, size_t inl)
{
    size_t n, chunk = MAXCHUNK / 8;
    DES_key_schedule *key = &(((PROV_DES_CTX *)ctx)->dks.ks);
    unsigned char c[1], d[1];

    if (inl < chunk)
        chunk = inl;

    while (inl && inl >= chunk) {
        for (n = 0; n < chunk * 8; ++n) {
            c[0] = (in[n / 8] & (1 << (7 - n % 8))) ? 0x80 : 0;
            DES_cfb_encrypt(c, d, 1, 1, key, (DES_cblock *)ctx->iv, ctx->enc);
            out[n / 8] =
                (out[n / 8] & ~(0x80 >> (unsigned int)(n % 8))) |
                ((d[0] & 0x80) >> (unsigned int)(n % 8));
        }
        inl -= chunk;
        in += chunk;
        out += chunk;
        if (inl < chunk)
            chunk = inl;
    }

    return 1;
}
