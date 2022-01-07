
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int V_ASN1_INTEGER ;
 int * bn_to_asn1_string (int const*,int *,int ) ;

ASN1_INTEGER *BN_to_ASN1_INTEGER(const BIGNUM *bn, ASN1_INTEGER *ai)
{
    return bn_to_asn1_string(bn, ai, V_ASN1_INTEGER);
}
