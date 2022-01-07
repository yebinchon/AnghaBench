
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int * ASN1_INTEGER_to_BN (int const*,int *) ;
 scalar_t__ BIO_write (int *,char*,int) ;
 char* BN_bn2hex (int *) ;
 int BN_free (int *) ;
 int OPENSSL_free (char*) ;
 int strlen (char*) ;

int TS_ASN1_INTEGER_print_bio(BIO *bio, const ASN1_INTEGER *num)
{
    BIGNUM *num_bn;
    int result = 0;
    char *hex;

    num_bn = ASN1_INTEGER_to_BN(num, ((void*)0));
    if (num_bn == ((void*)0))
        return -1;
    if ((hex = BN_bn2hex(num_bn))) {
        result = BIO_write(bio, "0x", 2) > 0;
        result = result && BIO_write(bio, hex, strlen(hex)) > 0;
        OPENSSL_free(hex);
    }
    BN_free(num_bn);

    return result;
}
