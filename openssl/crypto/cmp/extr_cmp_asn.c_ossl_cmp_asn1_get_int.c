
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_get_int64 (scalar_t__*,int const*) ;
 int ASN1_R_INVALID_NUMBER ;
 int ASN1_R_TOO_LARGE ;
 int ASN1_R_TOO_SMALL ;
 int CMPerr (int ,int ) ;
 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;

int ossl_cmp_asn1_get_int(const ASN1_INTEGER *a)
{
    int64_t res;

    if (!ASN1_INTEGER_get_int64(&res, a)) {
        CMPerr(0, ASN1_R_INVALID_NUMBER);
        return -1;
    }
    if (res < INT_MIN) {
        CMPerr(0, ASN1_R_TOO_SMALL);
        return -1;
    }
    if (res > INT_MAX) {
        CMPerr(0, ASN1_R_TOO_LARGE);
        return -1;
    }
    return (int)res;
}
