
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sm2_id; } ;
typedef TYPE_1__ X509 ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;

void X509_set0_sm2_id(X509 *x, ASN1_OCTET_STRING *sm2_id)
{
    ASN1_OCTET_STRING_free(x->sm2_id);
    x->sm2_id = sm2_id;
}
