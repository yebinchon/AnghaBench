#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hmac_key ;
struct TYPE_3__ {unsigned int payload_length; int /*<<< orphan*/  md; int /*<<< orphan*/  head; int /*<<< orphan*/  tail; } ;
typedef  TYPE_1__ EVP_RC4_HMAC_MD5 ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int EVP_AEAD_TLS1_AAD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  EVP_CTRL_AEAD_SET_MAC_KEY 129 
#define  EVP_CTRL_AEAD_TLS1_AAD 128 
 unsigned int MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(EVP_CIPHER_CTX *ctx, int type, int arg,
                             void *ptr)
{
    EVP_RC4_HMAC_MD5 *key = FUNC5(ctx);

    switch (type) {
    case EVP_CTRL_AEAD_SET_MAC_KEY:
        {
            unsigned int i;
            unsigned char hmac_key[64];

            FUNC7(hmac_key, 0, sizeof(hmac_key));

            if (arg > (int)sizeof(hmac_key)) {
                FUNC2(&key->head);
                FUNC3(&key->head, ptr, arg);
                FUNC1(hmac_key, &key->head);
            } else {
                FUNC6(hmac_key, ptr, arg);
            }

            for (i = 0; i < sizeof(hmac_key); i++)
                hmac_key[i] ^= 0x36; /* ipad */
            FUNC2(&key->head);
            FUNC3(&key->head, hmac_key, sizeof(hmac_key));

            for (i = 0; i < sizeof(hmac_key); i++)
                hmac_key[i] ^= 0x36 ^ 0x5c; /* opad */
            FUNC2(&key->tail);
            FUNC3(&key->tail, hmac_key, sizeof(hmac_key));

            FUNC4(hmac_key, sizeof(hmac_key));

            return 1;
        }
    case EVP_CTRL_AEAD_TLS1_AAD:
        {
            unsigned char *p = ptr;
            unsigned int len;

            if (arg != EVP_AEAD_TLS1_AAD_LEN)
                return -1;

            len = p[arg - 2] << 8 | p[arg - 1];

            if (!FUNC0(ctx)) {
                if (len < MD5_DIGEST_LENGTH)
                    return -1;
                len -= MD5_DIGEST_LENGTH;
                p[arg - 2] = len >> 8;
                p[arg - 1] = len;
            }
            key->payload_length = len;
            key->md = key->head;
            FUNC3(&key->md, p, arg);

            return MD5_DIGEST_LENGTH;
        }
    default:
        return -1;
    }
}