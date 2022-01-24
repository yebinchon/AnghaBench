#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* new_cipher; } ;
struct TYPE_11__ {TYPE_2__ tmp; int /*<<< orphan*/ * peer_tmp; } ;
struct TYPE_13__ {TYPE_4__* session; TYPE_3__ s3; } ;
struct TYPE_12__ {int /*<<< orphan*/  peer; } ;
struct TYPE_9__ {int algorithm_auth; } ;
typedef  TYPE_5__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int NAMED_CURVE_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_SKE_ECDHE ; 
 int /*<<< orphan*/  SSL_R_BAD_ECPOINT ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_LENGTH_TOO_SHORT ; 
 int /*<<< orphan*/  SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS ; 
 int /*<<< orphan*/  SSL_R_WRONG_CURVE ; 
 int SSL_aECDSA ; 
 int SSL_aRSA ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,unsigned int,int) ; 

__attribute__((used)) static int FUNC10(SSL *s, PACKET *pkt, EVP_PKEY **pkey)
{
#ifndef OPENSSL_NO_EC
    PACKET encoded_pt;
    unsigned int curve_type, curve_id;

    /*
     * Extract elliptic curve parameters and the server's ephemeral ECDH
     * public key. We only support named (not generic) curves and
     * ECParameters in this case is just three bytes.
     */
    if (!FUNC2(pkt, &curve_type) || !FUNC4(pkt, &curve_id)) {
        FUNC6(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_LENGTH_TOO_SHORT);
        return 0;
    }
    /*
     * Check curve is named curve type and one of our preferences, if not
     * server has sent an invalid curve.
     */
    if (curve_type != NAMED_CURVE_TYPE
            || !FUNC9(s, curve_id, 1)) {
        FUNC6(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_WRONG_CURVE);
        return 0;
    }

    if ((s->s3.peer_tmp = FUNC8(curve_id)) == NULL) {
        FUNC6(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS);
        return 0;
    }

    if (!FUNC3(pkt, &encoded_pt)) {
        FUNC6(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    if (!FUNC0(s->s3.peer_tmp,
                                        FUNC1(&encoded_pt),
                                        FUNC5(&encoded_pt))) {
        FUNC6(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_BAD_ECPOINT);
        return 0;
    }

    /*
     * The ECC/TLS specification does not mention the use of DSA to sign
     * ECParameters in the server key exchange message. We do support RSA
     * and ECDSA.
     */
    if (s->s3.tmp.new_cipher->algorithm_auth & SSL_aECDSA)
        *pkey = FUNC7(s->session->peer);
    else if (s->s3.tmp.new_cipher->algorithm_auth & SSL_aRSA)
        *pkey = FUNC7(s->session->peer);
    /* else anonymous ECDH, so no certificate or pkey. */

    return 1;
#else
    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_ECDHE,
             ERR_R_INTERNAL_ERROR);
    return 0;
#endif
}