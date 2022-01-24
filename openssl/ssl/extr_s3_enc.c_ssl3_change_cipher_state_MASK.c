#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  enc_write_state; } ;
struct TYPE_9__ {unsigned char* key_block; size_t key_block_length; TYPE_1__* new_compression; int /*<<< orphan*/ * new_hash; int /*<<< orphan*/ * new_sym_enc; } ;
struct TYPE_10__ {unsigned char* read_mac_secret; unsigned char* write_mac_secret; TYPE_2__ tmp; } ;
struct TYPE_12__ {TYPE_4__ statem; TYPE_3__ s3; int /*<<< orphan*/  rlayer; int /*<<< orphan*/ * compress; int /*<<< orphan*/  write_hash; int /*<<< orphan*/ * enc_write_ctx; int /*<<< orphan*/ * expand; int /*<<< orphan*/  read_hash; int /*<<< orphan*/ * enc_read_ctx; } ;
struct TYPE_8__ {int /*<<< orphan*/ * method; } ;
typedef  TYPE_5__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  COMP_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENC_WRITE_STATE_INVALID ; 
 int /*<<< orphan*/  ENC_WRITE_STATE_VALID ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char*,unsigned char*,int) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int SSL3_CC_READ ; 
 int SSL3_CC_WRITE ; 
 int SSL3_CHANGE_CIPHER_CLIENT_WRITE ; 
 int SSL3_CHANGE_CIPHER_SERVER_READ ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_CHANGE_CIPHER_STATE ; 
 int /*<<< orphan*/  SSL_R_COMPRESSION_LIBRARY_ERROR ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC14(SSL *s, int which)
{
    unsigned char *p, *mac_secret;
    unsigned char *ms, *key, *iv;
    EVP_CIPHER_CTX *dd;
    const EVP_CIPHER *c;
#ifndef OPENSSL_NO_COMP
    COMP_METHOD *comp;
#endif
    const EVP_MD *m;
    int mdi;
    size_t n, i, j, k, cl;
    int reuse_dd = 0;

    c = s->s3.tmp.new_sym_enc;
    m = s->s3.tmp.new_hash;
    /* m == NULL will lead to a crash later */
    if (!FUNC12(m != NULL)) {
        FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
#ifndef OPENSSL_NO_COMP
    if (s->s3.tmp.new_compression == NULL)
        comp = NULL;
    else
        comp = s->s3.tmp.new_compression->method;
#endif

    if (which & SSL3_CC_READ) {
        if (s->enc_read_ctx != NULL) {
            reuse_dd = 1;
        } else if ((s->enc_read_ctx = FUNC2()) == NULL) {
            FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        } else {
            /*
             * make sure it's initialised in case we exit later with an error
             */
            FUNC3(s->enc_read_ctx);
        }
        dd = s->enc_read_ctx;

        if (FUNC13(&s->read_hash, m) == NULL) {
            FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
#ifndef OPENSSL_NO_COMP
        /* COMPRESS */
        FUNC0(s->expand);
        s->expand = NULL;
        if (comp != NULL) {
            s->expand = FUNC1(comp);
            if (s->expand == NULL) {
                FUNC10(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_SSL3_CHANGE_CIPHER_STATE,
                         SSL_R_COMPRESSION_LIBRARY_ERROR);
                goto err;
            }
        }
#endif
        FUNC8(&s->rlayer);
        mac_secret = &(s->s3.read_mac_secret[0]);
    } else {
        s->statem.enc_write_state = ENC_WRITE_STATE_INVALID;
        if (s->enc_write_ctx != NULL) {
            reuse_dd = 1;
        } else if ((s->enc_write_ctx = FUNC2()) == NULL) {
            FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        } else {
            /*
             * make sure it's initialised in case we exit later with an error
             */
            FUNC3(s->enc_write_ctx);
        }
        dd = s->enc_write_ctx;
        if (FUNC13(&s->write_hash, m) == NULL) {
            FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                     ERR_R_MALLOC_FAILURE);
            goto err;
        }
#ifndef OPENSSL_NO_COMP
        /* COMPRESS */
        FUNC0(s->compress);
        s->compress = NULL;
        if (comp != NULL) {
            s->compress = FUNC1(comp);
            if (s->compress == NULL) {
                FUNC10(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_SSL3_CHANGE_CIPHER_STATE,
                         SSL_R_COMPRESSION_LIBRARY_ERROR);
                goto err;
            }
        }
#endif
        FUNC9(&s->rlayer);
        mac_secret = &(s->s3.write_mac_secret[0]);
    }

    if (reuse_dd)
        FUNC3(dd);

    p = s->s3.tmp.key_block;
    mdi = FUNC7(m);
    if (mdi < 0) {
        FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    i = mdi;
    cl = FUNC5(c);
    j = cl;
    k = FUNC4(c);
    if ((which == SSL3_CHANGE_CIPHER_CLIENT_WRITE) ||
        (which == SSL3_CHANGE_CIPHER_SERVER_READ)) {
        ms = &(p[0]);
        n = i + i;
        key = &(p[n]);
        n += j + j;
        iv = &(p[n]);
        n += k + k;
    } else {
        n = i;
        ms = &(p[n]);
        n += i + j;
        key = &(p[n]);
        n += j + k;
        iv = &(p[n]);
        n += k;
    }

    if (n > s->s3.tmp.key_block_length) {
        FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    FUNC11(mac_secret, ms, i);

    if (!FUNC6(dd, c, NULL, key, iv, (which & SSL3_CC_WRITE))) {
        FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_CHANGE_CIPHER_STATE,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    s->statem.enc_write_state = ENC_WRITE_STATE_VALID;
    return 1;
 err:
    return 0;
}