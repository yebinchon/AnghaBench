
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {TYPE_1__* dctx; } ;
struct TYPE_4__ {size_t mdmax; int const** mdevp; } ;
typedef TYPE_2__ SSL_DANE ;
typedef int EVP_MD ;



__attribute__((used)) static const EVP_MD *tlsa_md_get(SSL_DANE *dane, uint8_t mtype)
{
    if (mtype > dane->dctx->mdmax)
        return ((void*)0);
    return dane->dctx->mdevp[mtype];
}
