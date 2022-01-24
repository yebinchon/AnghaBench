#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  psk ;
typedef  int /*<<< orphan*/  identity ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_18__ {int early_data_ok; int /*<<< orphan*/  early_data; int /*<<< orphan*/  alpn_len; int /*<<< orphan*/ * alpn; int /*<<< orphan*/ * hostname; } ;
struct TYPE_20__ {scalar_t__ hello_retry_request; size_t (* psk_client_callback ) (TYPE_4__*,int /*<<< orphan*/ *,char*,int,unsigned char*,int) ;size_t psksession_id_len; scalar_t__ early_data_state; scalar_t__ max_early_data; TYPE_2__ ext; TYPE_3__* session; int /*<<< orphan*/ * psksession_id; TYPE_3__* psksession; int /*<<< orphan*/  (* psk_use_session_cb ) (TYPE_4__*,int /*<<< orphan*/  const*,unsigned char const**,size_t*,TYPE_3__**) ;} ;
struct TYPE_17__ {scalar_t__ max_early_data; int /*<<< orphan*/  alpn_selected_len; int /*<<< orphan*/ * alpn_selected; int /*<<< orphan*/ * hostname; } ;
struct TYPE_19__ {scalar_t__ ssl_version; TYPE_1__ ext; } ;
typedef  TYPE_3__ SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CIPHER ;
typedef  TYPE_4__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  EXT_RETURN ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int PSK_MAX_IDENTITY_LEN ; 
 int PSK_MAX_PSK_LEN ; 
 int /*<<< orphan*/  SSL_AD_HANDSHAKE_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,unsigned char const*) ; 
 scalar_t__ SSL_EARLY_DATA_CONNECTING ; 
 int /*<<< orphan*/  SSL_EARLY_DATA_REJECTED ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA ; 
 scalar_t__ SSL_HRR_PENDING ; 
 int /*<<< orphan*/  SSL_R_BAD_PSK ; 
 int /*<<< orphan*/  SSL_R_INCONSISTENT_EARLY_DATA_ALPN ; 
 int /*<<< orphan*/  SSL_R_INCONSISTENT_EARLY_DATA_SNI ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TLS1_3_VERSION ; 
 int /*<<< orphan*/  TLSEXT_TYPE_early_data ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_4__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int /*<<< orphan*/  const*,unsigned char const**,size_t*,TYPE_3__**) ; 
 size_t FUNC21 (TYPE_4__*,int /*<<< orphan*/ *,char*,int,unsigned char*,int) ; 

EXT_RETURN FUNC22(SSL *s, WPACKET *pkt,
                                         unsigned int context, X509 *x,
                                         size_t chainidx)
{
#ifndef OPENSSL_NO_PSK
    char identity[PSK_MAX_IDENTITY_LEN + 1];
#endif  /* OPENSSL_NO_PSK */
    const unsigned char *id = NULL;
    size_t idlen = 0;
    SSL_SESSION *psksess = NULL;
    SSL_SESSION *edsess = NULL;
    const EVP_MD *handmd = NULL;

    if (s->hello_retry_request == SSL_HRR_PENDING)
        handmd = FUNC17(s);

    if (s->psk_use_session_cb != NULL
            && (!s->psk_use_session_cb(s, handmd, &id, &idlen, &psksess)
                || (psksess != NULL
                    && psksess->ssl_version != TLS1_3_VERSION))) {
        FUNC7(psksess);
        FUNC12(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                 SSL_R_BAD_PSK);
        return EXT_RETURN_FAIL;
    }

#ifndef OPENSSL_NO_PSK
    if (psksess == NULL && s->psk_client_callback != NULL) {
        unsigned char psk[PSK_MAX_PSK_LEN];
        size_t psklen = 0;

        FUNC16(identity, 0, sizeof(identity));
        psklen = s->psk_client_callback(s, NULL, identity, sizeof(identity) - 1,
                                        psk, sizeof(psk));

        if (psklen > PSK_MAX_PSK_LEN) {
            FUNC12(s, SSL_AD_HANDSHAKE_FAILURE,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        } else if (psklen > 0) {
            const unsigned char tls13_aes128gcmsha256_id[] = { 0x13, 0x01 };
            const SSL_CIPHER *cipher;

            idlen = FUNC19(identity);
            if (idlen > PSK_MAX_IDENTITY_LEN) {
                FUNC12(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                         ERR_R_INTERNAL_ERROR);
                return EXT_RETURN_FAIL;
            }
            id = (unsigned char *)identity;

            /*
             * We found a PSK using an old style callback. We don't know
             * the digest so we default to SHA256 as per the TLSv1.3 spec
             */
            cipher = FUNC6(s, tls13_aes128gcmsha256_id);
            if (cipher == NULL) {
                FUNC12(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                         ERR_R_INTERNAL_ERROR);
                return EXT_RETURN_FAIL;
            }

            psksess = FUNC8();
            if (psksess == NULL
                    || !FUNC9(psksess, psk, psklen)
                    || !FUNC10(psksess, cipher)
                    || !FUNC11(psksess, TLS1_3_VERSION)) {
                FUNC12(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                         ERR_R_INTERNAL_ERROR);
                FUNC0(psk, psklen);
                return EXT_RETURN_FAIL;
            }
            FUNC0(psk, psklen);
        }
    }
#endif  /* OPENSSL_NO_PSK */

    FUNC7(s->psksession);
    s->psksession = psksess;
    if (psksess != NULL) {
        FUNC1(s->psksession_id);
        s->psksession_id = FUNC2(id, idlen);
        if (s->psksession_id == NULL) {
            FUNC12(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        s->psksession_id_len = idlen;
    }

    if (s->early_data_state != SSL_EARLY_DATA_CONNECTING
            || (s->session->ext.max_early_data == 0
                && (psksess == NULL || psksess->ext.max_early_data == 0))) {
        s->max_early_data = 0;
        return EXT_RETURN_NOT_SENT;
    }
    edsess = s->session->ext.max_early_data != 0 ? s->session : psksess;
    s->max_early_data = edsess->ext.max_early_data;

    if (edsess->ext.hostname != NULL) {
        if (s->ext.hostname == NULL
                || (s->ext.hostname != NULL
                    && FUNC18(s->ext.hostname, edsess->ext.hostname) != 0)) {
            FUNC12(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                     SSL_R_INCONSISTENT_EARLY_DATA_SNI);
            return EXT_RETURN_FAIL;
        }
    }

    if ((s->ext.alpn == NULL && edsess->ext.alpn_selected != NULL)) {
        FUNC12(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                 SSL_R_INCONSISTENT_EARLY_DATA_ALPN);
        return EXT_RETURN_FAIL;
    }

    /*
     * Verify that we are offering an ALPN protocol consistent with the early
     * data.
     */
    if (edsess->ext.alpn_selected != NULL) {
        PACKET prots, alpnpkt;
        int found = 0;

        if (!FUNC3(&prots, s->ext.alpn, s->ext.alpn_len)) {
            FUNC12(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA, ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        while (FUNC5(&prots, &alpnpkt)) {
            if (FUNC4(&alpnpkt, edsess->ext.alpn_selected,
                             edsess->ext.alpn_selected_len)) {
                found = 1;
                break;
            }
        }
        if (!found) {
            FUNC12(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                     SSL_R_INCONSISTENT_EARLY_DATA_ALPN);
            return EXT_RETURN_FAIL;
        }
    }

    if (!FUNC14(pkt, TLSEXT_TYPE_early_data)
            || !FUNC15(pkt)
            || !FUNC13(pkt)) {
        FUNC12(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CTOS_EARLY_DATA,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    /*
     * We set this to rejected here. Later, if the server acknowledges the
     * extension, we set it to accepted.
     */
    s->ext.early_data = SSL_EARLY_DATA_REJECTED;
    s->ext.early_data_ok = 1;

    return EXT_RETURN_SENT;
}