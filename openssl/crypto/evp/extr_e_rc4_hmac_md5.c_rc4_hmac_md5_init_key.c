
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int payload_length; int head; int md; int tail; int ks; } ;
typedef TYPE_1__ EVP_RC4_HMAC_MD5 ;
typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_key_length (int *) ;
 int MD5_Init (int *) ;
 int NO_PAYLOAD_LENGTH ;
 int RC4_set_key (int *,int ,unsigned char const*) ;
 TYPE_1__* data (int *) ;

__attribute__((used)) static int rc4_hmac_md5_init_key(EVP_CIPHER_CTX *ctx,
                                 const unsigned char *inkey,
                                 const unsigned char *iv, int enc)
{
    EVP_RC4_HMAC_MD5 *key = data(ctx);

    RC4_set_key(&key->ks, EVP_CIPHER_CTX_key_length(ctx), inkey);

    MD5_Init(&key->head);
    key->tail = key->head;
    key->md = key->head;

    key->payload_length = NO_PAYLOAD_LENGTH;

    return 1;
}
