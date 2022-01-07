
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_EXTENSION ;
struct TYPE_4__ {int extensions; } ;
struct TYPE_5__ {TYPE_1__ crl; } ;
typedef TYPE_2__ X509_CRL ;


 int * X509v3_get_ext (int ,int) ;

X509_EXTENSION *X509_CRL_get_ext(const X509_CRL *x, int loc)
{
    return X509v3_get_ext(x->crl.extensions, loc);
}
