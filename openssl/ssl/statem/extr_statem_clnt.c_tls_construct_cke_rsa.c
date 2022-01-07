
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_9__ {unsigned char* pms; size_t pmslen; } ;
struct TYPE_10__ {TYPE_2__ tmp; } ;
struct TYPE_11__ {int client_version; scalar_t__ version; TYPE_3__ s3; TYPE_1__* session; } ;
struct TYPE_8__ {int * peer; } ;
typedef TYPE_4__ SSL ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int ERR_R_EVP_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 scalar_t__ EVP_PKEY_encrypt (int *,unsigned char*,size_t*,unsigned char*,size_t) ;
 scalar_t__ EVP_PKEY_encrypt_init (int *) ;
 int * EVP_PKEY_get0_RSA (int *) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 scalar_t__ SSL3_VERSION ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CKE_RSA ;
 size_t SSL_MAX_MASTER_KEY_LENGTH ;
 int SSL_R_BAD_RSA_ENCRYPT ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 int WPACKET_allocate_bytes (int *,size_t,unsigned char**) ;
 int WPACKET_close (int *) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int * X509_get0_pubkey (int *) ;
 int ssl_log_rsa_client_key_exchange (TYPE_4__*,unsigned char*,size_t,unsigned char*,size_t) ;

__attribute__((used)) static int tls_construct_cke_rsa(SSL *s, WPACKET *pkt)
{

    unsigned char *encdata = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    EVP_PKEY_CTX *pctx = ((void*)0);
    size_t enclen;
    unsigned char *pms = ((void*)0);
    size_t pmslen = 0;

    if (s->session->peer == ((void*)0)) {



        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_RSA,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    pkey = X509_get0_pubkey(s->session->peer);
    if (EVP_PKEY_get0_RSA(pkey) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_RSA,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    pmslen = SSL_MAX_MASTER_KEY_LENGTH;
    pms = OPENSSL_malloc(pmslen);
    if (pms == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_RSA,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    pms[0] = s->client_version >> 8;
    pms[1] = s->client_version & 0xff;

    if (RAND_bytes(pms + 2, (int)(pmslen - 2)) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_RSA,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }


    if (s->version > SSL3_VERSION && !WPACKET_start_sub_packet_u16(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_RSA,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    pctx = EVP_PKEY_CTX_new(pkey, ((void*)0));
    if (pctx == ((void*)0) || EVP_PKEY_encrypt_init(pctx) <= 0
        || EVP_PKEY_encrypt(pctx, ((void*)0), &enclen, pms, pmslen) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_RSA,
                 ERR_R_EVP_LIB);
        goto err;
    }
    if (!WPACKET_allocate_bytes(pkt, enclen, &encdata)
            || EVP_PKEY_encrypt(pctx, encdata, &enclen, pms, pmslen) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_RSA,
                 SSL_R_BAD_RSA_ENCRYPT);
        goto err;
    }
    EVP_PKEY_CTX_free(pctx);
    pctx = ((void*)0);


    if (s->version > SSL3_VERSION && !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_RSA,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }


    if (!ssl_log_rsa_client_key_exchange(s, encdata, enclen, pms, pmslen)) {

        goto err;
    }

    s->s3.tmp.pms = pms;
    s->s3.tmp.pmslen = pmslen;

    return 1;
 err:
    OPENSSL_clear_free(pms, pmslen);
    EVP_PKEY_CTX_free(pctx);

    return 0;





}
