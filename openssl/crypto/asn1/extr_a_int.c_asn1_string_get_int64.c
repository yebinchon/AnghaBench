
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int type; int length; int data; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_F_ASN1_STRING_GET_INT64 ;
 int ASN1_R_WRONG_INTEGER_TYPE ;
 int ASN1err (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int V_ASN1_NEG ;
 int asn1_get_int64 (int *,int ,int ,int) ;

__attribute__((used)) static int asn1_string_get_int64(int64_t *pr, const ASN1_STRING *a, int itype)
{
    if (a == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_STRING_GET_INT64, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }
    if ((a->type & ~V_ASN1_NEG) != itype) {
        ASN1err(ASN1_F_ASN1_STRING_GET_INT64, ASN1_R_WRONG_INTEGER_TYPE);
        return 0;
    }
    return asn1_get_int64(pr, a->data, a->length, a->type & V_ASN1_NEG);
}
