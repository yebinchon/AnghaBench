
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


 int RC4_set_key (int *,size_t,unsigned char const*) ;

__attribute__((used)) static int cipher_hw_rc4_initkey(PROV_CIPHER_CTX *ctx,
                                 const unsigned char *key, size_t keylen)
{
    PROV_RC4_CTX *rctx = (PROV_RC4_CTX *)ctx;

    RC4_set_key(&rctx->ks.ks, keylen, key);
    return 1;
}
