
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n ;
typedef int e ;
typedef int RSA ;
typedef int EVP_PKEY ;


 int BN_bin2bn (unsigned char*,int,int *) ;
 int EVP_PKEY_assign_RSA (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int RSA_free (int *) ;
 int * RSA_new () ;
 int RSA_set0_key (int *,int ,int ,int *) ;

__attribute__((used)) static EVP_PKEY *get_test_pkey(void)
{
    static unsigned char n[] =
        "\x00\xAA\x36\xAB\xCE\x88\xAC\xFD\xFF\x55\x52\x3C\x7F\xC4\x52\x3F"
        "\x90\xEF\xA0\x0D\xF3\x77\x4A\x25\x9F\x2E\x62\xB4\xC5\xD9\x9C\xB5"
        "\xAD\xB3\x00\xA0\x28\x5E\x53\x01\x93\x0E\x0C\x70\xFB\x68\x76\x93"
        "\x9C\xE6\x16\xCE\x62\x4A\x11\xE0\x08\x6D\x34\x1E\xBC\xAC\xA0\xA1"
        "\xF5";
    static unsigned char e[] = "\x11";

    RSA *rsa = RSA_new();
    EVP_PKEY *pk = EVP_PKEY_new();

    if (rsa == ((void*)0) || pk == ((void*)0) || !EVP_PKEY_assign_RSA(pk, rsa)) {
        RSA_free(rsa);
        EVP_PKEY_free(pk);
        return ((void*)0);
    }

    if (!RSA_set0_key(rsa, BN_bin2bn(n, sizeof(n)-1, ((void*)0)),
                      BN_bin2bn(e, sizeof(e)-1, ((void*)0)), ((void*)0))) {
        EVP_PKEY_free(pk);
        return ((void*)0);
    }

    return pk;
}
