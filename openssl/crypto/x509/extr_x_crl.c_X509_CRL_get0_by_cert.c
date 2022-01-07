
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_REVOKED ;
struct TYPE_6__ {TYPE_1__* meth; } ;
typedef TYPE_2__ X509_CRL ;
typedef int X509 ;
struct TYPE_5__ {int (* crl_lookup ) (TYPE_2__*,int **,int ,int ) ;} ;


 int X509_get_issuer_name (int *) ;
 int X509_get_serialNumber (int *) ;
 int stub1 (TYPE_2__*,int **,int ,int ) ;

int X509_CRL_get0_by_cert(X509_CRL *crl, X509_REVOKED **ret, X509 *x)
{
    if (crl->meth->crl_lookup)
        return crl->meth->crl_lookup(crl, ret,
                                     X509_get_serialNumber(x),
                                     X509_get_issuer_name(x));
    return 0;
}
