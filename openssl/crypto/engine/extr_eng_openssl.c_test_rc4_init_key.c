
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * key; int ks; } ;
typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_key_length (int *) ;
 int RC4_set_key (int *,int const,int *) ;
 int fprintf (int ,char*) ;
 int memcpy (int *,unsigned char const*,int const) ;
 int stderr ;
 TYPE_1__* test (int *) ;

__attribute__((used)) static int test_rc4_init_key(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                             const unsigned char *iv, int enc)
{
    const int n = EVP_CIPHER_CTX_key_length(ctx);




    if (n <= 0)
        return n;
    memcpy(&test(ctx)->key[0], key, n);
    RC4_set_key(&test(ctx)->ks, n, test(ctx)->key);
    return 1;
}
