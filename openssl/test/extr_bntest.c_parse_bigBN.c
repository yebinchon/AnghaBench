
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_hex2bn (int **,char*) ;
 int OPENSSL_free (char*) ;
 char* glue_strings (char const**,int *) ;

__attribute__((used)) static int parse_bigBN(BIGNUM **out, const char *bn_strings[])
{
    char *bigstring = glue_strings(bn_strings, ((void*)0));
    int ret = BN_hex2bn(out, bigstring);

    OPENSSL_free(bigstring);
    return ret;
}
