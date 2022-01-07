
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
typedef TYPE_2__ X509_CRL ;
struct TYPE_5__ {int (* crl_verify ) (TYPE_2__*,int *) ;} ;
typedef int EVP_PKEY ;


 int stub1 (TYPE_2__*,int *) ;

int X509_CRL_verify(X509_CRL *crl, EVP_PKEY *r)
{
    if (crl->meth->crl_verify)
        return crl->meth->crl_verify(crl, r);
    return 0;
}
