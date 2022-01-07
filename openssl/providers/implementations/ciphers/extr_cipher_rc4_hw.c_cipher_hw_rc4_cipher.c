
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks; } ;
struct TYPE_4__ {TYPE_1__ ks; } ;
typedef TYPE_2__ PROV_RC4_CTX ;
typedef int PROV_CIPHER_CTX ;


 int RC4 (int *,size_t,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int cipher_hw_rc4_cipher(PROV_CIPHER_CTX *ctx, unsigned char *out,
                                const unsigned char *in, size_t len)
{
    PROV_RC4_CTX *rctx = (PROV_RC4_CTX *)ctx;

    RC4(&rctx->ks.ks, len, in, out);
    return 1;
}
