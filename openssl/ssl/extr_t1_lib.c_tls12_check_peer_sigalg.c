
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int const uint16_t ;
struct TYPE_20__ {scalar_t__ hash; int sig; int sig_idx; int curve; } ;
struct TYPE_17__ {TYPE_5__ const* peer_sigalg; } ;
struct TYPE_18__ {TYPE_2__ tmp; } ;
struct TYPE_19__ {TYPE_3__ s3; TYPE_1__* cert; } ;
struct TYPE_16__ {int cert_flags; } ;
typedef TYPE_4__ SSL ;
typedef TYPE_5__ SIGALG_LOOKUP ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;
typedef int EC_KEY ;


 int EC_GROUP_get_curve_name (int ) ;
 int EC_KEY_get0_group (int *) ;
 int EVP_MD_size (int const*) ;
 int EVP_MD_type (int const*) ;
 int EVP_PKEY_DSA ;
 int EVP_PKEY_EC ;
 int EVP_PKEY_RSA ;
 int EVP_PKEY_RSA_PSS ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;
 int EVP_PKEY_id (int *) ;
 scalar_t__ NID_sha1 ;
 scalar_t__ NID_sha224 ;
 int NID_undef ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_CERT_FLAGS_CHECK_TLS_STRICT ;
 int SSL_F_TLS12_CHECK_PEER_SIGALG ;
 scalar_t__ SSL_IS_TLS13 (TYPE_4__*) ;
 int SSL_R_ILLEGAL_POINT_COMPRESSION ;
 int SSL_R_UNKNOWN_DIGEST ;
 int SSL_R_WRONG_CURVE ;
 int SSL_R_WRONG_SIGNATURE_TYPE ;
 int SSL_SECOP_SIGALG_CHECK ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int const TLSEXT_SIGALG_ecdsa_secp256r1_sha256 ;
 int const TLSEXT_SIGALG_ecdsa_secp384r1_sha384 ;
 int ssl_cert_lookup_by_nid (int,size_t*) ;
 int ssl_security (TYPE_4__*,int ,int,int ,void*) ;
 size_t tls12_get_psigalgs (TYPE_4__*,int,int const**) ;
 int tls1_check_group_id (TYPE_4__*,int ,int) ;
 int tls1_check_pkey_comp (TYPE_4__*,int *) ;
 int tls1_get_group_id (int *) ;
 int tls1_lookup_md (TYPE_5__ const*,int const**) ;
 TYPE_5__* tls1_lookup_sigalg (int const) ;
 scalar_t__ tls1_suiteb (TYPE_4__*) ;

int tls12_check_peer_sigalg(SSL *s, uint16_t sig, EVP_PKEY *pkey)
{
    const uint16_t *sent_sigs;
    const EVP_MD *md = ((void*)0);
    char sigalgstr[2];
    size_t sent_sigslen, i, cidx;
    int pkeyid = EVP_PKEY_id(pkey);
    const SIGALG_LOOKUP *lu;


    if (pkeyid == -1)
        return -1;
    if (SSL_IS_TLS13(s)) {

        if (pkeyid == EVP_PKEY_DSA) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS12_CHECK_PEER_SIGALG,
                     SSL_R_WRONG_SIGNATURE_TYPE);
            return 0;
        }

        if (pkeyid == EVP_PKEY_RSA)
            pkeyid = EVP_PKEY_RSA_PSS;
    }
    lu = tls1_lookup_sigalg(sig);




    if (lu == ((void*)0)
        || (SSL_IS_TLS13(s) && (lu->hash == NID_sha1 || lu->hash == NID_sha224))
        || (pkeyid != lu->sig
        && (lu->sig != EVP_PKEY_RSA_PSS || pkeyid != EVP_PKEY_RSA))) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_WRONG_SIGNATURE_TYPE);
        return 0;
    }

    if (!ssl_cert_lookup_by_nid(EVP_PKEY_id(pkey), &cidx)
            || lu->sig_idx != (int)cidx) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_WRONG_SIGNATURE_TYPE);
        return 0;
    }


    if (pkeyid == EVP_PKEY_EC) {


        if (!tls1_check_pkey_comp(s, pkey)) {
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                     SSL_F_TLS12_CHECK_PEER_SIGALG,
                     SSL_R_ILLEGAL_POINT_COMPRESSION);
            return 0;
        }


        if (SSL_IS_TLS13(s) || tls1_suiteb(s)) {
            EC_KEY *ec = EVP_PKEY_get0_EC_KEY(pkey);
            int curve = EC_GROUP_get_curve_name(EC_KEY_get0_group(ec));

            if (lu->curve != NID_undef && curve != lu->curve) {
                SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                         SSL_F_TLS12_CHECK_PEER_SIGALG, SSL_R_WRONG_CURVE);
                return 0;
            }
        }
        if (!SSL_IS_TLS13(s)) {

            if (!tls1_check_group_id(s, tls1_get_group_id(pkey), 1)) {
                SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                         SSL_F_TLS12_CHECK_PEER_SIGALG, SSL_R_WRONG_CURVE);
                return 0;
            }
            if (tls1_suiteb(s)) {

                if (sig != TLSEXT_SIGALG_ecdsa_secp256r1_sha256
                    && sig != TLSEXT_SIGALG_ecdsa_secp384r1_sha384) {
                    SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE,
                             SSL_F_TLS12_CHECK_PEER_SIGALG,
                             SSL_R_WRONG_SIGNATURE_TYPE);
                    return 0;
                }
            }
        }
    } else if (tls1_suiteb(s)) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_WRONG_SIGNATURE_TYPE);
        return 0;
    }



    sent_sigslen = tls12_get_psigalgs(s, 1, &sent_sigs);
    for (i = 0; i < sent_sigslen; i++, sent_sigs++) {
        if (sig == *sent_sigs)
            break;
    }

    if (i == sent_sigslen && (lu->hash != NID_sha1
        || s->cert->cert_flags & SSL_CERT_FLAGS_CHECK_TLS_STRICT)) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_WRONG_SIGNATURE_TYPE);
        return 0;
    }
    if (!tls1_lookup_md(lu, &md)) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS12_CHECK_PEER_SIGALG,
                 SSL_R_UNKNOWN_DIGEST);
        return 0;
    }
    if (md != ((void*)0)) {




        sigalgstr[0] = (sig >> 8) & 0xff;
        sigalgstr[1] = sig & 0xff;
        if (!ssl_security(s, SSL_SECOP_SIGALG_CHECK,
                    EVP_MD_size(md) * 4, EVP_MD_type(md),
                    (void *)sigalgstr)) {
            SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS12_CHECK_PEER_SIGALG,
                     SSL_R_WRONG_SIGNATURE_TYPE);
            return 0;
        }
    }

    s->s3.tmp.peer_sigalg = lu;
    return 1;
}
