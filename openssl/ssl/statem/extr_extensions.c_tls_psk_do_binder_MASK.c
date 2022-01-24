#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  resumption_label ;
typedef  int /*<<< orphan*/  finishedkey ;
typedef  int /*<<< orphan*/  external_label ;
typedef  int /*<<< orphan*/  binderkey ;
struct TYPE_16__ {int /*<<< orphan*/  handshake_buffer; } ;
struct TYPE_18__ {scalar_t__ early_data_state; scalar_t__ hello_retry_request; scalar_t__ server; TYPE_4__ s3; scalar_t__ early_secret; TYPE_2__* session; } ;
struct TYPE_15__ {scalar_t__ max_early_data; } ;
struct TYPE_17__ {int /*<<< orphan*/  master_key_length; int /*<<< orphan*/  master_key; scalar_t__ early_secret; TYPE_3__ ext; } ;
struct TYPE_13__ {scalar_t__ max_early_data; } ;
struct TYPE_14__ {TYPE_1__ ext; } ;
typedef  TYPE_5__ SSL_SESSION ;
typedef  TYPE_6__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC1 (unsigned char const*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EVP_PKEY_HMAC ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 scalar_t__ SSL_EARLY_DATA_CONNECTING ; 
 int /*<<< orphan*/  SSL_F_TLS_PSK_DO_BINDER ; 
 scalar_t__ SSL_HRR_PENDING ; 
 int /*<<< orphan*/  SSL_R_BAD_HANDSHAKE_LENGTH ; 
 int /*<<< orphan*/  SSL_R_BINDER_DOES_NOT_VERIFY ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*,int /*<<< orphan*/  const*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*,int /*<<< orphan*/  const*,unsigned char*,unsigned char const*,size_t,unsigned char*,size_t,unsigned char*,size_t,int) ; 

int FUNC23(SSL *s, const EVP_MD *md, const unsigned char *msgstart,
                      size_t binderoffset, const unsigned char *binderin,
                      unsigned char *binderout, SSL_SESSION *sess, int sign,
                      int external)
{
    EVP_PKEY *mackey = NULL;
    EVP_MD_CTX *mctx = NULL;
    unsigned char hash[EVP_MAX_MD_SIZE], binderkey[EVP_MAX_MD_SIZE];
    unsigned char finishedkey[EVP_MAX_MD_SIZE], tmpbinder[EVP_MAX_MD_SIZE];
    unsigned char *early_secret;
#ifdef CHARSET_EBCDIC
    static const unsigned char resumption_label[] = { 0x72, 0x65, 0x73, 0x20, 0x62, 0x69, 0x6E, 0x64, 0x65, 0x72, 0x00 };
    static const unsigned char external_label[]   = { 0x65, 0x78, 0x74, 0x20, 0x62, 0x69, 0x6E, 0x64, 0x65, 0x72, 0x00 };
#else
    static const unsigned char resumption_label[] = "res binder";
    static const unsigned char external_label[] = "ext binder";
#endif
    const unsigned char *label;
    size_t bindersize, labelsize, hashsize;
    int hashsizei = FUNC10(md);
    int ret = -1;
    int usepskfored = 0;

    /* Ensure cast to size_t is safe */
    if (!FUNC19(hashsizei >= 0)) {
        FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    hashsize = (size_t)hashsizei;

    if (external
            && s->early_data_state == SSL_EARLY_DATA_CONNECTING
            && s->session->ext.max_early_data == 0
            && sess->ext.max_early_data > 0)
        usepskfored = 1;

    if (external) {
        label = external_label;
        labelsize = sizeof(external_label) - 1;
    } else {
        label = resumption_label;
        labelsize = sizeof(resumption_label) - 1;
    }

    /*
     * Generate the early_secret. On the server side we've selected a PSK to
     * resume with (internal or external) so we always do this. On the client
     * side we do this for a non-external (i.e. resumption) PSK or external PSK
     * that will be used for early_data so that it is in place for sending early
     * data. For client side external PSK not being used for early_data we
     * generate it but store it away for later use.
     */
    if (s->server || !external || usepskfored)
        early_secret = (unsigned char *)s->early_secret;
    else
        early_secret = (unsigned char *)sess->early_secret;

    if (!FUNC21(s, md, NULL, sess->master_key,
                               sess->master_key_length, early_secret)) {
        /* SSLfatal() already called */
        goto err;
    }

    /*
     * Create the handshake hash for the binder key...the messages so far are
     * empty!
     */
    mctx = FUNC9();
    if (mctx == NULL
            || FUNC3(mctx, md, NULL) <= 0
            || FUNC2(mctx, hash, NULL) <= 0) {
        FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    /* Generate the binder key */
    if (!FUNC22(s, md, early_secret, label, labelsize, hash,
                           hashsize, binderkey, hashsize, 1)) {
        /* SSLfatal() already called */
        goto err;
    }

    /* Generate the finished key */
    if (!FUNC20(s, md, binderkey, finishedkey, hashsize)) {
        /* SSLfatal() already called */
        goto err;
    }

    if (FUNC3(mctx, md, NULL) <= 0) {
        FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    /*
     * Get a hash of the ClientHello up to the start of the binders. If we are
     * following a HelloRetryRequest then this includes the hash of the first
     * ClientHello and the HelloRetryRequest itself.
     */
    if (s->hello_retry_request == SSL_HRR_PENDING) {
        size_t hdatalen;
        long hdatalen_l;
        void *hdata;

        hdatalen = hdatalen_l =
            FUNC0(s->s3.handshake_buffer, &hdata);
        if (hdatalen_l <= 0) {
            FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                     SSL_R_BAD_HANDSHAKE_LENGTH);
            goto err;
        }

        /*
         * For servers the handshake buffer data will include the second
         * ClientHello - which we don't want - so we need to take that bit off.
         */
        if (s->server) {
            PACKET hashprefix, msg;

            /* Find how many bytes are left after the first two messages */
            if (!FUNC14(&hashprefix, hdata, hdatalen)
                    || !FUNC15(&hashprefix, 1)
                    || !FUNC16(&hashprefix, &msg)
                    || !FUNC15(&hashprefix, 1)
                    || !FUNC16(&hashprefix, &msg)) {
                FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                         ERR_R_INTERNAL_ERROR);
                goto err;
            }
            hdatalen -= FUNC17(&hashprefix);
        }

        if (FUNC7(mctx, hdata, hdatalen) <= 0) {
            FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if (FUNC7(mctx, msgstart, binderoffset) <= 0
            || FUNC2(mctx, hash, NULL) <= 0) {
        FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    mackey = FUNC12(EVP_PKEY_HMAC, NULL, finishedkey,
                                          hashsize);
    if (mackey == NULL) {
        FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (!sign)
        binderout = tmpbinder;

    bindersize = hashsize;
    if (FUNC5(mctx, NULL, md, NULL, mackey) <= 0
            || FUNC6(mctx, hash, hashsize) <= 0
            || FUNC4(mctx, binderout, &bindersize) <= 0
            || bindersize != hashsize) {
        FUNC18(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (sign) {
        ret = 1;
    } else {
        /* HMAC keys can't do EVP_DigestVerify* - use CRYPTO_memcmp instead */
        ret = (FUNC1(binderin, binderout, hashsize) == 0);
        if (!ret)
            FUNC18(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PSK_DO_BINDER,
                     SSL_R_BINDER_DOES_NOT_VERIFY);
    }

 err:
    FUNC13(binderkey, sizeof(binderkey));
    FUNC13(finishedkey, sizeof(finishedkey));
    FUNC11(mackey);
    FUNC8(mctx);

    return ret;
}