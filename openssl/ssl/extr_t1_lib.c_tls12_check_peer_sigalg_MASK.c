#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int const uint16_t ;
struct TYPE_20__ {scalar_t__ hash; int sig; int sig_idx; int curve; } ;
struct TYPE_17__ {TYPE_5__ const* peer_sigalg; } ;
struct TYPE_18__ {TYPE_2__ tmp; } ;
struct TYPE_19__ {TYPE_3__ s3; TYPE_1__* cert; } ;
struct TYPE_16__ {int cert_flags; } ;
typedef  TYPE_4__ SSL ;
typedef  TYPE_5__ SIGALG_LOOKUP ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int EVP_PKEY_DSA ; 
 int EVP_PKEY_EC ; 
 int EVP_PKEY_RSA ; 
 int EVP_PKEY_RSA_PSS ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ NID_sha1 ; 
 scalar_t__ NID_sha224 ; 
 int NID_undef ; 
 int /*<<< orphan*/  SSL_AD_HANDSHAKE_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int SSL_CERT_FLAGS_CHECK_TLS_STRICT ; 
 int /*<<< orphan*/  SSL_F_TLS12_CHECK_PEER_SIGALG ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  SSL_R_ILLEGAL_POINT_COMPRESSION ; 
 int /*<<< orphan*/  SSL_R_UNKNOWN_DIGEST ; 
 int /*<<< orphan*/  SSL_R_WRONG_CURVE ; 
 int /*<<< orphan*/  SSL_R_WRONG_SIGNATURE_TYPE ; 
 int /*<<< orphan*/  SSL_SECOP_SIGALG_CHECK ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const TLSEXT_SIGALG_ecdsa_secp256r1_sha256 ; 
 int const TLSEXT_SIGALG_ecdsa_secp384r1_sha384 ; 
 int /*<<< orphan*/  FUNC8 (int,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 size_t FUNC10 (TYPE_4__*,int,int const**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__ const*,int /*<<< orphan*/  const**) ; 
 TYPE_5__* FUNC15 (int const) ; 
 scalar_t__ FUNC16 (TYPE_4__*) ; 

int FUNC17(SSL *s, uint16_t sig, EVP_PKEY *pkey)
{
    const uint16_t *sent_sigs;
    const EVP_MD *md = NULL;
    char sigalgstr[2];
    size_t sent_sigslen, i, cidx;
    int pkeyid = FUNC5(pkey);
    const SIGALG_LOOKUP *lu;

    /* Should never happen */
    if (pkeyid == -1)
        return -1;
    if (FUNC6(s)) {
        /* Disallow DSA for TLS 1.3 */
        if (pkeyid == EVP_PKEY_DSA) {
            FUNC7(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS12_CHECK_PEER_SIGALG,
                     SSL_R_WRONG_SIGNATURE_TYPE);
            return 0;
        }
        /* Only allow PSS for TLS 1.3 */
        if (pkeyid == EVP_PKEY_RSA)
            pkeyid = EVP_PKEY_RSA_PSS;
    }
    lu = FUNC15(sig);
    /*
     * Check sigalgs is known. Disallow SHA1/SHA224 with TLS 1.3. Check key type
     * is consistent with signature: RSA keys can be used for RSA-PSS
     */
    if (lu == NULL
        || (FUNC6(s) && (lu->hash == NID_sha1 || lu->hash == NID_sha224))
        || (pkeyid != lu->sig
        && (lu->sig != EVP_PKEY_RSA_PSS || pkeyid != EVP_PKEY_RSA))) {
        FUNC7(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_WRONG_SIGNATURE_TYPE);
        return 0;
    }
    /* Check the sigalg is consistent with the key OID */
    if (!FUNC8(FUNC5(pkey), &cidx)
            || lu->sig_idx != (int)cidx) {
        FUNC7(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_WRONG_SIGNATURE_TYPE);
        return 0;
    }

#ifndef OPENSSL_NO_EC
    if (pkeyid == EVP_PKEY_EC) {

        /* Check point compression is permitted */
        if (!FUNC12(s, pkey)) {
            FUNC7(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS12_CHECK_PEER_SIGALG,
                     SSL_R_ILLEGAL_POINT_COMPRESSION);
            return 0;
        }

        /* For TLS 1.3 or Suite B check curve matches signature algorithm */
        if (FUNC6(s) || FUNC16(s)) {
            EC_KEY *ec = FUNC4(pkey);
            int curve = FUNC0(FUNC1(ec));

            if (lu->curve != NID_undef && curve != lu->curve) {
                FUNC7(s, SSL_AD_ILLEGAL_PARAMETER,
                         SSL_F_TLS12_CHECK_PEER_SIGALG, SSL_R_WRONG_CURVE);
                return 0;
            }
        }
        if (!FUNC6(s)) {
            /* Check curve matches extensions */
            if (!FUNC11(s, FUNC13(pkey), 1)) {
                FUNC7(s, SSL_AD_ILLEGAL_PARAMETER,
                         SSL_F_TLS12_CHECK_PEER_SIGALG, SSL_R_WRONG_CURVE);
                return 0;
            }
            if (FUNC16(s)) {
                /* Check sigalg matches a permissible Suite B value */
                if (sig != TLSEXT_SIGALG_ecdsa_secp256r1_sha256
                    && sig != TLSEXT_SIGALG_ecdsa_secp384r1_sha384) {
                    FUNC7(s, SSL_AD_HANDSHAKE_FAILURE,
                             SSL_F_TLS12_CHECK_PEER_SIGALG,
                             SSL_R_WRONG_SIGNATURE_TYPE);
                    return 0;
                }
            }
        }
    } else if (FUNC16(s)) {
        FUNC7(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_WRONG_SIGNATURE_TYPE);
        return 0;
    }
#endif

    /* Check signature matches a type we sent */
    sent_sigslen = FUNC10(s, 1, &sent_sigs);
    for (i = 0; i < sent_sigslen; i++, sent_sigs++) {
        if (sig == *sent_sigs)
            break;
    }
    /* Allow fallback to SHA1 if not strict mode */
    if (i == sent_sigslen && (lu->hash != NID_sha1
        || s->cert->cert_flags & SSL_CERT_FLAGS_CHECK_TLS_STRICT)) {
        FUNC7(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_WRONG_SIGNATURE_TYPE);
        return 0;
    }
    if (!FUNC14(lu, &md)) {
        FUNC7(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_UNKNOWN_DIGEST);
        return 0;
    }
    if (md != NULL) {
        /*
         * Make sure security callback allows algorithm. For historical
         * reasons we have to pass the sigalg as a two byte char array.
         */
        sigalgstr[0] = (sig >> 8) & 0xff;
        sigalgstr[1] = sig & 0xff;
        if (!FUNC9(s, SSL_SECOP_SIGALG_CHECK,
                    FUNC2(md) * 4, FUNC3(md),
                    (void *)sigalgstr)) {
            FUNC7(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS12_CHECK_PEER_SIGALG,
                     SSL_R_WRONG_SIGNATURE_TYPE);
            return 0;
        }
    }
    /* Store the sigalg the peer uses */
    s->s3.tmp.peer_sigalg = lu;
    return 1;
}