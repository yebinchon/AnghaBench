
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int ASN1_ENUMERATED ;


 int V_ASN1_ENUMERATED ;
 int asn1_string_set_int64 (int *,int ,int ) ;

int ASN1_ENUMERATED_set_int64(ASN1_ENUMERATED *a, int64_t r)
{
    return asn1_string_set_int64(a, r, V_ASN1_ENUMERATED);
}
