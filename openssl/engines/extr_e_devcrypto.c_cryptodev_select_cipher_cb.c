
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int EVP_CIPHER_nid (int const*) ;
 int * EVP_get_cipherbyname (char*) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strndup (char const*,int) ;
 size_t find_cipher_data_index (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static int cryptodev_select_cipher_cb(const char *str, int len, void *usr)
{
    int *cipher_list = (int *)usr;
    char *name;
    const EVP_CIPHER *EVP;
    size_t i;

    if (len == 0)
        return 1;
    if (usr == ((void*)0) || (name = OPENSSL_strndup(str, len)) == ((void*)0))
        return 0;
    EVP = EVP_get_cipherbyname(name);
    if (EVP == ((void*)0))
        fprintf(stderr, "devcrypto: unknown cipher %s\n", name);
    else if ((i = find_cipher_data_index(EVP_CIPHER_nid(EVP))) != (size_t)-1)
        cipher_list[i] = 1;
    else
        fprintf(stderr, "devcrypto: cipher %s not available\n", name);
    OPENSSL_free(name);
    return 1;
}
