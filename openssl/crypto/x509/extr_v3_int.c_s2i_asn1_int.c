
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_EXT_METHOD ;
typedef int X509V3_CTX ;


 void* s2i_ASN1_INTEGER (int *,char const*) ;

__attribute__((used)) static void *s2i_asn1_int(X509V3_EXT_METHOD *meth, X509V3_CTX *ctx,
                          const char *value)
{
    return s2i_ASN1_INTEGER(meth, value);
}
