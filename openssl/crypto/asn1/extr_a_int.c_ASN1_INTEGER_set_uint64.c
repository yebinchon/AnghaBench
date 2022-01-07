
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ASN1_INTEGER ;


 int V_ASN1_INTEGER ;
 int asn1_string_set_uint64 (int *,int ,int ) ;

int ASN1_INTEGER_set_uint64(ASN1_INTEGER *a, uint64_t r)
{
    return asn1_string_set_uint64(a, r, V_ASN1_INTEGER);
}
