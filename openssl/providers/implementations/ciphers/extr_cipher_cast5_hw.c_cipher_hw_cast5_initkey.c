
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks; } ;
struct TYPE_4__ {TYPE_1__ ks; } ;
typedef int PROV_CIPHER_CTX ;
typedef TYPE_2__ PROV_CAST_CTX ;


 int CAST_set_key (int *,size_t,unsigned char const*) ;

__attribute__((used)) static int cipher_hw_cast5_initkey(PROV_CIPHER_CTX *ctx,
                                   const unsigned char *key, size_t keylen)
{
    PROV_CAST_CTX *bctx = (PROV_CAST_CTX *)ctx;

    CAST_set_key(&(bctx->ks.ks), keylen, key);
    return 1;
}
