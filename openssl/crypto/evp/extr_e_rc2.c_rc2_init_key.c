
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_bits; int ks; } ;
typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_key_length (int *) ;
 int RC2_set_key (int *,int ,unsigned char const*,int ) ;
 TYPE_1__* data (int *) ;

__attribute__((used)) static int rc2_init_key(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                        const unsigned char *iv, int enc)
{
    RC2_set_key(&data(ctx)->ks, EVP_CIPHER_CTX_key_length(ctx),
                key, data(ctx)->key_bits);
    return 1;
}
