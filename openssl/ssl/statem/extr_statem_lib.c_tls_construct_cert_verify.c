
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_18__ {int sig; int sigalg; } ;
struct TYPE_14__ {TYPE_1__* cert; TYPE_6__* sigalg; } ;
struct TYPE_15__ {TYPE_2__ tmp; } ;
struct TYPE_17__ {scalar_t__ version; TYPE_4__* session; TYPE_3__ s3; } ;
struct TYPE_16__ {int master_key; scalar_t__ master_key_length; } ;
struct TYPE_13__ {int * privatekey; } ;
typedef TYPE_5__ SSL ;
typedef TYPE_6__ SIGALG_LOOKUP ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int BUF_reverse (unsigned char*,int *,size_t) ;
 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_CTRL_SSL3_MASTER_SECRET ;
 scalar_t__ EVP_DigestSign (int *,unsigned char*,size_t*,void*,size_t) ;
 scalar_t__ EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_DigestSignInit (int *,int **,int const*,int *,int *) ;
 scalar_t__ EVP_DigestSignUpdate (int *,void*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 scalar_t__ EVP_MD_CTX_ctrl (int *,int ,int,int ) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_padding (int *,int ) ;
 scalar_t__ EVP_PKEY_CTX_set_rsa_pss_saltlen (int *,int ) ;
 int EVP_PKEY_RSA_PSS ;
 size_t EVP_PKEY_size (int *) ;
 int NID_id_GostR3410_2001 ;
 int NID_id_GostR3410_2012_256 ;
 int NID_id_GostR3410_2012_512 ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int RSA_PKCS1_PSS_PADDING ;
 int RSA_PSS_SALTLEN_DIGEST ;
 scalar_t__ SSL3_VERSION ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CERT_VERIFY ;
 scalar_t__ SSL_USE_SIGALGS (TYPE_5__*) ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int TLS13_TBS_PREAMBLE_SIZE ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_sub_memcpy_u16 (int *,unsigned char*,size_t) ;
 int get_cert_verify_tbs_data (TYPE_5__*,unsigned char*,void**,size_t*) ;
 int ssl3_digest_cached_records (TYPE_5__*,int ) ;
 int tls1_lookup_md (TYPE_6__ const*,int const**) ;

int tls_construct_cert_verify(SSL *s, WPACKET *pkt)
{
    EVP_PKEY *pkey = ((void*)0);
    const EVP_MD *md = ((void*)0);
    EVP_MD_CTX *mctx = ((void*)0);
    EVP_PKEY_CTX *pctx = ((void*)0);
    size_t hdatalen = 0, siglen = 0;
    void *hdata;
    unsigned char *sig = ((void*)0);
    unsigned char tls13tbs[TLS13_TBS_PREAMBLE_SIZE + EVP_MAX_MD_SIZE];
    const SIGALG_LOOKUP *lu = s->s3.tmp.sigalg;

    if (lu == ((void*)0) || s->s3.tmp.cert == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    pkey = s->s3.tmp.cert->privatekey;

    if (pkey == ((void*)0) || !tls1_lookup_md(lu, &md)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    mctx = EVP_MD_CTX_new();
    if (mctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }


    if (!get_cert_verify_tbs_data(s, tls13tbs, &hdata, &hdatalen)) {

        goto err;
    }

    if (SSL_USE_SIGALGS(s) && !WPACKET_put_bytes_u16(pkt, lu->sigalg)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    siglen = EVP_PKEY_size(pkey);
    sig = OPENSSL_malloc(siglen);
    if (sig == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (EVP_DigestSignInit(mctx, &pctx, md, ((void*)0), pkey) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_EVP_LIB);
        goto err;
    }

    if (lu->sig == EVP_PKEY_RSA_PSS) {
        if (EVP_PKEY_CTX_set_rsa_padding(pctx, RSA_PKCS1_PSS_PADDING) <= 0
            || EVP_PKEY_CTX_set_rsa_pss_saltlen(pctx,
                                                RSA_PSS_SALTLEN_DIGEST) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                     ERR_R_EVP_LIB);
            goto err;
        }
    }
    if (s->version == SSL3_VERSION) {
        if (EVP_DigestSignUpdate(mctx, hdata, hdatalen) <= 0




            || EVP_MD_CTX_ctrl(mctx, EVP_CTRL_SSL3_MASTER_SECRET,
                               (int)s->session->master_key_length,
                               s->session->master_key) <= 0
            || EVP_DigestSignFinal(mctx, sig, &siglen) <= 0) {

            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                     ERR_R_EVP_LIB);
            goto err;
        }
    } else if (EVP_DigestSign(mctx, sig, &siglen, hdata, hdatalen) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_EVP_LIB);
        goto err;
    }


    {
        int pktype = lu->sig;

        if (pktype == NID_id_GostR3410_2001
            || pktype == NID_id_GostR3410_2012_256
            || pktype == NID_id_GostR3410_2012_512)
            BUF_reverse(sig, ((void*)0), siglen);
    }


    if (!WPACKET_sub_memcpy_u16(pkt, sig, siglen)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_VERIFY,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }


    if (!ssl3_digest_cached_records(s, 0)) {

        goto err;
    }

    OPENSSL_free(sig);
    EVP_MD_CTX_free(mctx);
    return 1;
 err:
    OPENSSL_free(sig);
    EVP_MD_CTX_free(mctx);
    return 0;
}
