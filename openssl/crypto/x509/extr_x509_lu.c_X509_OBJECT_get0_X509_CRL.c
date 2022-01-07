
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * crl; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ data; } ;
typedef TYPE_2__ X509_OBJECT ;
typedef int X509_CRL ;


 scalar_t__ X509_LU_CRL ;

X509_CRL *X509_OBJECT_get0_X509_CRL(X509_OBJECT *a)
{
    if (a == ((void*)0) || a->type != X509_LU_CRL)
        return ((void*)0);
    return a->data.crl;
}
