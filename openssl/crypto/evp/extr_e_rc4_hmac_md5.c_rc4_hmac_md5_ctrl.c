
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hmac_key ;
struct TYPE_3__ {unsigned int payload_length; int md; int head; int tail; } ;
typedef TYPE_1__ EVP_RC4_HMAC_MD5 ;
typedef int EVP_CIPHER_CTX ;


 int EVP_AEAD_TLS1_AAD_LEN ;
 int EVP_CIPHER_CTX_encrypting (int *) ;


 unsigned int MD5_DIGEST_LENGTH ;
 int MD5_Final (unsigned char*,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,unsigned char*,int) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 TYPE_1__* data (int *) ;
 int memcpy (unsigned char*,void*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int rc4_hmac_md5_ctrl(EVP_CIPHER_CTX *ctx, int type, int arg,
                             void *ptr)
{
    EVP_RC4_HMAC_MD5 *key = data(ctx);

    switch (type) {
    case 129:
        {
            unsigned int i;
            unsigned char hmac_key[64];

            memset(hmac_key, 0, sizeof(hmac_key));

            if (arg > (int)sizeof(hmac_key)) {
                MD5_Init(&key->head);
                MD5_Update(&key->head, ptr, arg);
                MD5_Final(hmac_key, &key->head);
            } else {
                memcpy(hmac_key, ptr, arg);
            }

            for (i = 0; i < sizeof(hmac_key); i++)
                hmac_key[i] ^= 0x36;
            MD5_Init(&key->head);
            MD5_Update(&key->head, hmac_key, sizeof(hmac_key));

            for (i = 0; i < sizeof(hmac_key); i++)
                hmac_key[i] ^= 0x36 ^ 0x5c;
            MD5_Init(&key->tail);
            MD5_Update(&key->tail, hmac_key, sizeof(hmac_key));

            OPENSSL_cleanse(hmac_key, sizeof(hmac_key));

            return 1;
        }
    case 128:
        {
            unsigned char *p = ptr;
            unsigned int len;

            if (arg != EVP_AEAD_TLS1_AAD_LEN)
                return -1;

            len = p[arg - 2] << 8 | p[arg - 1];

            if (!EVP_CIPHER_CTX_encrypting(ctx)) {
                if (len < MD5_DIGEST_LENGTH)
                    return -1;
                len -= MD5_DIGEST_LENGTH;
                p[arg - 2] = len >> 8;
                p[arg - 1] = len;
            }
            key->payload_length = len;
            key->md = key->head;
            MD5_Update(&key->md, p, arg);

            return MD5_DIGEST_LENGTH;
        }
    default:
        return -1;
    }
}
