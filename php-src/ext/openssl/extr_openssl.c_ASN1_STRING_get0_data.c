
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_STRING ;


 unsigned char const* M_ASN1_STRING_data (int const*) ;

__attribute__((used)) static const unsigned char *ASN1_STRING_get0_data(const ASN1_STRING *asn1)
{
 return M_ASN1_STRING_data(asn1);
}
