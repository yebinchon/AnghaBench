
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int ASN1_INTEGER ;


 scalar_t__ BIO_puts (int *,char*) ;
 int OPENSSL_free (char*) ;
 char* i2s_ASN1_INTEGER (int *,int const*) ;

__attribute__((used)) static int asn1_print_integer(BIO *out, const ASN1_INTEGER *str)
{
    char *s;
    int ret = 1;
    s = i2s_ASN1_INTEGER(((void*)0), str);
    if (s == ((void*)0))
        return 0;
    if (BIO_puts(out, s) <= 0)
        ret = 0;
    OPENSSL_free(s);
    return ret;
}
