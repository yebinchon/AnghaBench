
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509 ;
typedef int WPACKET ;
struct TYPE_10__ {unsigned char* pms; size_t pmslen; TYPE_1__* new_cipher; } ;
struct TYPE_11__ {TYPE_3__ tmp; int server_random; int client_random; } ;
struct TYPE_12__ {TYPE_4__ s3; TYPE_2__* session; } ;
struct TYPE_9__ {int * peer; } ;
struct TYPE_8__ {int algorithm_auth; } ;
typedef TYPE_5__ SSL ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,unsigned int*) ;
 scalar_t__ EVP_DigestInit (int *,int ) ;
 scalar_t__ EVP_DigestUpdate (int *,int ,int ) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_PKEY_CTRL_SET_IV ;
 scalar_t__ EVP_PKEY_CTX_ctrl (int *,int,int ,int ,int,unsigned char*) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int ,int *) ;
 int EVP_PKEY_OP_ENCRYPT ;
 scalar_t__ EVP_PKEY_encrypt (int *,unsigned char*,size_t*,unsigned char*,size_t) ;
 scalar_t__ EVP_PKEY_encrypt_init (int *) ;
 int EVP_get_digestbynid (int) ;
 int NID_id_GostR3411_2012_256 ;
 int NID_id_GostR3411_94 ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 int SSL3_RANDOM_SIZE ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CKE_GOST ;
 int SSL_R_LIBRARY_BUG ;
 int SSL_R_NO_GOST_CERTIFICATE_SENT_BY_PEER ;
 int SSL_aGOST12 ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int V_ASN1_CONSTRUCTED ;
 int V_ASN1_SEQUENCE ;
 int WPACKET_put_bytes_u8 (int *,int) ;
 int WPACKET_sub_memcpy_u8 (int *,unsigned char*,size_t) ;
 int X509_get0_pubkey (int *) ;

__attribute__((used)) static int tls_construct_cke_gost(SSL *s, WPACKET *pkt)
{


    EVP_PKEY_CTX *pkey_ctx = ((void*)0);
    X509 *peer_cert;
    size_t msglen;
    unsigned int md_len;
    unsigned char shared_ukm[32], tmp[256];
    EVP_MD_CTX *ukm_hash = ((void*)0);
    int dgst_nid = NID_id_GostR3411_94;
    unsigned char *pms = ((void*)0);
    size_t pmslen = 0;

    if ((s->s3.tmp.new_cipher->algorithm_auth & SSL_aGOST12) != 0)
        dgst_nid = NID_id_GostR3411_2012_256;




    peer_cert = s->session->peer;
    if (peer_cert == ((void*)0)) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS_CONSTRUCT_CKE_GOST,
               SSL_R_NO_GOST_CERTIFICATE_SENT_BY_PEER);
        return 0;
    }

    pkey_ctx = EVP_PKEY_CTX_new(X509_get0_pubkey(peer_cert), ((void*)0));
    if (pkey_ctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_GOST,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }







    pmslen = 32;
    pms = OPENSSL_malloc(pmslen);
    if (pms == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_GOST,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (EVP_PKEY_encrypt_init(pkey_ctx) <= 0



        || RAND_bytes(pms, (int)pmslen) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_GOST,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    };




    ukm_hash = EVP_MD_CTX_new();
    if (ukm_hash == ((void*)0)
        || EVP_DigestInit(ukm_hash, EVP_get_digestbynid(dgst_nid)) <= 0
        || EVP_DigestUpdate(ukm_hash, s->s3.client_random,
                            SSL3_RANDOM_SIZE) <= 0
        || EVP_DigestUpdate(ukm_hash, s->s3.server_random,
                            SSL3_RANDOM_SIZE) <= 0
        || EVP_DigestFinal_ex(ukm_hash, shared_ukm, &md_len) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_GOST,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    EVP_MD_CTX_free(ukm_hash);
    ukm_hash = ((void*)0);
    if (EVP_PKEY_CTX_ctrl(pkey_ctx, -1, EVP_PKEY_OP_ENCRYPT,
                          EVP_PKEY_CTRL_SET_IV, 8, shared_ukm) < 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_GOST,
                 SSL_R_LIBRARY_BUG);
        goto err;
    }




    msglen = 255;
    if (EVP_PKEY_encrypt(pkey_ctx, tmp, &msglen, pms, pmslen) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_GOST,
                 SSL_R_LIBRARY_BUG);
        goto err;
    }

    if (!WPACKET_put_bytes_u8(pkt, V_ASN1_SEQUENCE | V_ASN1_CONSTRUCTED)
            || (msglen >= 0x80 && !WPACKET_put_bytes_u8(pkt, 0x81))
            || !WPACKET_sub_memcpy_u8(pkt, tmp, msglen)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_GOST,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    EVP_PKEY_CTX_free(pkey_ctx);
    s->s3.tmp.pms = pms;
    s->s3.tmp.pmslen = pmslen;

    return 1;
 err:
    EVP_PKEY_CTX_free(pkey_ctx);
    OPENSSL_clear_free(pms, pmslen);
    EVP_MD_CTX_free(ukm_hash);
    return 0;





}
