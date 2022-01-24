#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_14__ {int cert_req; int /*<<< orphan*/  peer_sigalg; } ;
struct TYPE_15__ {int /*<<< orphan*/ * handshake_buffer; TYPE_2__ tmp; } ;
struct TYPE_16__ {scalar_t__ version; TYPE_3__ s3; int /*<<< orphan*/  server; TYPE_1__* session; } ;
struct TYPE_13__ {int /*<<< orphan*/  master_key; scalar_t__ master_key_length; int /*<<< orphan*/ * peer; } ;
typedef  TYPE_4__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  ERR_R_EVP_LIB ; 
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_CTRL_SSL3_MASTER_SECRET ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const*,unsigned int,void*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 char* FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_PROCESS_CONTINUE_PROCESSING ; 
 int /*<<< orphan*/  MSG_PROCESS_CONTINUE_READING ; 
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int NID_id_GostR3410_2001 ; 
 int NID_id_GostR3410_2012_256 ; 
 int NID_id_GostR3410_2012_512 ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*) ; 
 unsigned char* FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned char const**,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RSA_PKCS1_PSS_PADDING ; 
 int /*<<< orphan*/  RSA_PSS_SALTLEN_DIGEST ; 
 scalar_t__ SSL3_VERSION ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_DECRYPT_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_CERT_VERIFY ; 
 scalar_t__ FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  SSL_R_BAD_PACKET ; 
 int /*<<< orphan*/  SSL_R_BAD_SIGNATURE ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_SIGNATURE_FOR_NON_SIGNING_CERTIFICATE ; 
 int /*<<< orphan*/  SSL_R_WRONG_SIGNATURE_SIZE ; 
 scalar_t__ FUNC21 (TYPE_4__*) ; 
 scalar_t__ FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS ; 
 int TLS13_TBS_PREAMBLE_SIZE ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*,unsigned char*,void**,size_t*) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (TYPE_4__*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_4__*,int /*<<< orphan*/ *) ; 

MSG_PROCESS_RETURN FUNC30(SSL *s, PACKET *pkt)
{
    EVP_PKEY *pkey = NULL;
    const unsigned char *data;
#ifndef OPENSSL_NO_GOST
    unsigned char *gost_data = NULL;
#endif
    MSG_PROCESS_RETURN ret = MSG_PROCESS_ERROR;
    int j;
    unsigned int len;
    X509 *peer;
    const EVP_MD *md = NULL;
    size_t hdatalen = 0;
    void *hdata;
    unsigned char tls13tbs[TLS13_TBS_PREAMBLE_SIZE + EVP_MAX_MD_SIZE];
    EVP_MD_CTX *mctx = FUNC8();
    EVP_PKEY_CTX *pctx = NULL;

    if (mctx == NULL) {
        FUNC23(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    peer = s->session->peer;
    pkey = FUNC24(peer);
    if (pkey == NULL) {
        FUNC23(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (FUNC26(pkey, NULL) == NULL) {
        FUNC23(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 SSL_R_SIGNATURE_FOR_NON_SIGNING_CERTIFICATE);
        goto err;
    }

    if (FUNC22(s)) {
        unsigned int sigalg;

        if (!FUNC18(pkt, &sigalg)) {
            FUNC23(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     SSL_R_BAD_PACKET);
            goto err;
        }
        if (FUNC27(s, sigalg, pkey) <= 0) {
            /* SSLfatal() already called */
            goto err;
        }
    } else if (!FUNC29(s, pkey)) {
            FUNC23(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     ERR_R_INTERNAL_ERROR);
            goto err;
    }

    if (!FUNC28(s->s3.tmp.peer_sigalg, &md)) {
        FUNC23(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (FUNC22(s))
        FUNC16(TLS, "USING TLSv1.2 HASH %s\n",
                    md == NULL ? "n/a" : FUNC9(md));

    /* Check for broken implementations of GOST ciphersuites */
    /*
     * If key is GOST and len is exactly 64 or 128, it is signature without
     * length field (CryptoPro implementations at least till TLS 1.2)
     */
#ifndef OPENSSL_NO_GOST
    if (!FUNC22(s)
        && ((FUNC19(pkt) == 64
             && (FUNC12(pkey) == NID_id_GostR3410_2001
                 || FUNC12(pkey) == NID_id_GostR3410_2012_256))
            || (FUNC19(pkt) == 128
                && FUNC12(pkey) == NID_id_GostR3410_2012_512))) {
        len = FUNC19(pkt);
    } else
#endif
    if (!FUNC18(pkt, &len)) {
        FUNC23(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }

    j = FUNC13(pkey);
    if (((int)len > j) || ((int)FUNC19(pkt) > j)
        || (FUNC19(pkt) == 0)) {
        FUNC23(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 SSL_R_WRONG_SIGNATURE_SIZE);
        goto err;
    }
    if (!FUNC17(pkt, &data, len)) {
        FUNC23(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 SSL_R_LENGTH_MISMATCH);
        goto err;
    }

    if (!FUNC25(s, tls13tbs, &hdata, &hdatalen)) {
        /* SSLfatal() already called */
        goto err;
    }

    FUNC16(TLS, "Using client verify alg %s\n",
                md == NULL ? "n/a" : FUNC9(md));

    if (FUNC4(mctx, &pctx, md, NULL, pkey) <= 0) {
        FUNC23(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                 ERR_R_EVP_LIB);
        goto err;
    }
#ifndef OPENSSL_NO_GOST
    {
        int pktype = FUNC12(pkey);
        if (pktype == NID_id_GostR3410_2001
            || pktype == NID_id_GostR3410_2012_256
            || pktype == NID_id_GostR3410_2012_512) {
            if ((gost_data = FUNC15(len)) == NULL) {
                FUNC23(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_PROCESS_CERT_VERIFY, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            FUNC1(gost_data, data, len);
            data = gost_data;
        }
    }
#endif

    if (FUNC21(s)) {
        if (FUNC10(pctx, RSA_PKCS1_PSS_PADDING) <= 0
            || FUNC11(pctx,
                                                RSA_PSS_SALTLEN_DIGEST) <= 0) {
            FUNC23(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     ERR_R_EVP_LIB);
            goto err;
        }
    }
    if (s->version == SSL3_VERSION) {
        /*
         * TODO(3.0) Replace this when EVP_MD_CTX_ctrl() is deprecated
         * with a call to ssl3_digest_master_key_set_params()
         */
        if (FUNC5(mctx, hdata, hdatalen) <= 0
                || FUNC6(mctx, EVP_CTRL_SSL3_MASTER_SECRET,
                                   (int)s->session->master_key_length,
                                    s->session->master_key) <= 0) {
            FUNC23(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     ERR_R_EVP_LIB);
            goto err;
        }
        if (FUNC3(mctx, data, len) <= 0) {
            FUNC23(s, SSL_AD_DECRYPT_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     SSL_R_BAD_SIGNATURE);
            goto err;
        }
    } else {
        j = FUNC2(mctx, data, len, hdata, hdatalen);
        if (j <= 0) {
            FUNC23(s, SSL_AD_DECRYPT_ERROR, SSL_F_TLS_PROCESS_CERT_VERIFY,
                     SSL_R_BAD_SIGNATURE);
            goto err;
        }
    }

    /*
     * In TLSv1.3 on the client side we make sure we prepare the client
     * certificate after the CertVerify instead of when we get the
     * CertificateRequest. This is because in TLSv1.3 the CertificateRequest
     * comes *before* the Certificate message. In TLSv1.2 it comes after. We
     * want to make sure that SSL_get_peer_certificate() will return the actual
     * server certificate from the client_cert_cb callback.
     */
    if (!s->server && FUNC20(s) && s->s3.tmp.cert_req == 1)
        ret = MSG_PROCESS_CONTINUE_PROCESSING;
    else
        ret = MSG_PROCESS_CONTINUE_READING;
 err:
    FUNC0(s->s3.handshake_buffer);
    s->s3.handshake_buffer = NULL;
    FUNC7(mctx);
#ifndef OPENSSL_NO_GOST
    FUNC14(gost_data);
#endif
    return ret;
}