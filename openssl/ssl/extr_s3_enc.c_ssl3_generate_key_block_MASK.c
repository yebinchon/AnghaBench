#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  smd ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {unsigned char* server_random; unsigned char* client_random; } ;
struct TYPE_8__ {TYPE_2__* session; TYPE_1__ s3; } ;
struct TYPE_7__ {unsigned char* master_key; int master_key_length; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 int /*<<< orphan*/  OSSL_DIGEST_NAME_MD5 ; 
 int SHA_DIGEST_LENGTH ; 
 int SSL3_RANDOM_SIZE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_GENERATE_KEY_BLOCK ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,int) ; 
 unsigned char* os_toascii ; 

__attribute__((used)) static int FUNC11(SSL *s, unsigned char *km, int num)
{
    EVP_MD *md5;
    EVP_MD_CTX *m5;
    EVP_MD_CTX *s1;
    unsigned char buf[16], smd[SHA_DIGEST_LENGTH];
    unsigned char c = 'A';
    unsigned int i, j, k;
    int ret = 0;

#ifdef CHARSET_EBCDIC
    c = os_toascii[c];          /* 'A' in ASCII */
#endif
    k = 0;
    md5 = FUNC5(NULL, OSSL_DIGEST_NAME_MD5, "-fips");
    m5 = FUNC4();
    s1 = FUNC4();
    if (md5 == NULL || m5 == NULL || s1 == NULL) {
        FUNC9(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GENERATE_KEY_BLOCK,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }
    for (i = 0; (int)i < num; i += MD5_DIGEST_LENGTH) {
        k++;
        if (k > sizeof(buf)) {
            /* bug: 'buf' is too small for this ciphersuite */
            FUNC9(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GENERATE_KEY_BLOCK,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        for (j = 0; j < k; j++)
            buf[j] = c;
        c++;
        if (!FUNC1(s1, FUNC7(), NULL)
            || !FUNC2(s1, buf, k)
            || !FUNC2(s1, s->session->master_key,
                                 s->session->master_key_length)
            || !FUNC2(s1, s->s3.server_random, SSL3_RANDOM_SIZE)
            || !FUNC2(s1, s->s3.client_random, SSL3_RANDOM_SIZE)
            || !FUNC0(s1, smd, NULL)
            || !FUNC1(m5, md5, NULL)
            || !FUNC2(m5, s->session->master_key,
                                 s->session->master_key_length)
            || !FUNC2(m5, smd, SHA_DIGEST_LENGTH)) {
            FUNC9(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GENERATE_KEY_BLOCK,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        if ((int)(i + MD5_DIGEST_LENGTH) > num) {
            if (!FUNC0(m5, smd, NULL)) {
                FUNC9(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_SSL3_GENERATE_KEY_BLOCK, ERR_R_INTERNAL_ERROR);
                goto err;
            }
            FUNC10(km, smd, (num - i));
        } else {
            if (!FUNC0(m5, km, NULL)) {
                FUNC9(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_SSL3_GENERATE_KEY_BLOCK, ERR_R_INTERNAL_ERROR);
                goto err;
            }
        }

        km += MD5_DIGEST_LENGTH;
    }
    FUNC8(smd, sizeof(smd));
    ret = 1;
 err:
    FUNC3(m5);
    FUNC3(s1);
    FUNC6(md5);
    return ret;
}