
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int extensions; } ;
struct TYPE_5__ {TYPE_1__ crl; } ;
typedef TYPE_2__ X509_CRL ;


 void* X509V3_get_d2i (int ,int,int*,int*) ;

void *X509_CRL_get_ext_d2i(const X509_CRL *x, int nid, int *crit, int *idx)
{
    return X509V3_get_d2i(x->crl.extensions, nid, crit, idx);
}
