
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;
typedef int ASN1_ENUMERATED ;


 int V_ASN1_ENUMERATED ;
 int * bn_to_asn1_string (int const*,int *,int ) ;

ASN1_ENUMERATED *BN_to_ASN1_ENUMERATED(const BIGNUM *bn, ASN1_ENUMERATED *ai)
{
    return bn_to_asn1_string(bn, ai, V_ASN1_ENUMERATED);
}
