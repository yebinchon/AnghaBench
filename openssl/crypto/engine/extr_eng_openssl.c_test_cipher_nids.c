
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int EVP_CIPHER_nid (int const*) ;
 int * test_r4_40_cipher () ;
 int * test_r4_cipher () ;

__attribute__((used)) static int test_cipher_nids(const int **nids)
{
    static int cipher_nids[4] = { 0, 0, 0, 0 };
    static int pos = 0;
    static int init = 0;

    if (!init) {
        const EVP_CIPHER *cipher;
        if ((cipher = test_r4_cipher()) != ((void*)0))
            cipher_nids[pos++] = EVP_CIPHER_nid(cipher);
        if ((cipher = test_r4_40_cipher()) != ((void*)0))
            cipher_nids[pos++] = EVP_CIPHER_nid(cipher);
        cipher_nids[pos] = 0;
        init = 1;
    }
    *nids = cipher_nids;
    return pos;
}
