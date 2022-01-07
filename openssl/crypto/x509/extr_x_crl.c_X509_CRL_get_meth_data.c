
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* meth_data; } ;
typedef TYPE_1__ X509_CRL ;



void *X509_CRL_get_meth_data(X509_CRL *crl)
{
    return crl->meth_data;
}
