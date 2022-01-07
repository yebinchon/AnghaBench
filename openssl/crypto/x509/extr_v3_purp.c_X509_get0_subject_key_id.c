
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* skid; } ;
typedef TYPE_1__ X509 ;
typedef int ASN1_OCTET_STRING ;


 int X509_check_purpose (TYPE_1__*,int,int) ;

const ASN1_OCTET_STRING *X509_get0_subject_key_id(X509 *x)
{

    X509_check_purpose(x, -1, -1);
    return x->skid;
}
