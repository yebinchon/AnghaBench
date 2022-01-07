
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dh; scalar_t__ pad; int * dhpeer; } ;
typedef TYPE_1__ PROV_DH_CTX ;
typedef int BIGNUM ;


 int DH_compute_key (unsigned char*,int const*,int *) ;
 int DH_compute_key_padded (unsigned char*,int const*,int *) ;
 int DH_get0_key (int *,int const**,int *) ;
 scalar_t__ DH_size (int *) ;

__attribute__((used)) static int dh_derive(void *vpdhctx, unsigned char *secret, size_t *secretlen,
                     size_t outlen)
{
    PROV_DH_CTX *pdhctx = (PROV_DH_CTX *)vpdhctx;
    int ret;
    size_t dhsize;
    const BIGNUM *pub_key = ((void*)0);


    if (pdhctx->dh == ((void*)0) || pdhctx->dhpeer == ((void*)0))
        return 0;

    dhsize = (size_t)DH_size(pdhctx->dh);
    if (secret == ((void*)0)) {
        *secretlen = dhsize;
        return 1;
    }
    if (outlen < dhsize)
        return 0;

    DH_get0_key(pdhctx->dhpeer, &pub_key, ((void*)0));
    ret = (pdhctx->pad) ? DH_compute_key_padded(secret, pub_key, pdhctx->dh)
                        : DH_compute_key(secret, pub_key, pdhctx->dh);
    if (ret <= 0)
        return 0;

    *secretlen = ret;
    return 1;
}
