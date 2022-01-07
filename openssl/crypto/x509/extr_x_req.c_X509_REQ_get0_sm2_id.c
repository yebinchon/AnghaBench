
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sm2_id; } ;
typedef TYPE_1__ X509_REQ ;
typedef int ASN1_OCTET_STRING ;



ASN1_OCTET_STRING *X509_REQ_get0_sm2_id(X509_REQ *x)
{
    return x->sm2_id;
}
