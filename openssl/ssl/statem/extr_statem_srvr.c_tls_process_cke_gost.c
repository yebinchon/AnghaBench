
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int premaster_secret ;
struct TYPE_18__ {int no_cert_verify; } ;
struct TYPE_13__ {TYPE_1__* new_cipher; } ;
struct TYPE_14__ {TYPE_2__ tmp; } ;
struct TYPE_19__ {TYPE_7__ statem; TYPE_6__* session; TYPE_5__* cert; TYPE_3__ s3; } ;
struct TYPE_17__ {int peer; } ;
struct TYPE_16__ {TYPE_4__* pkeys; } ;
struct TYPE_15__ {int * privatekey; } ;
struct TYPE_12__ {unsigned long algorithm_auth; } ;
typedef TYPE_8__ SSL ;
typedef int PACKET ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_clear_error () ;
 int EVP_PKEY_CTRL_PEER_KEY ;
 scalar_t__ EVP_PKEY_CTX_ctrl (int *,int,int,int ,int,int *) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 scalar_t__ EVP_PKEY_decrypt (int *,unsigned char*,size_t*,unsigned char const*,size_t) ;
 scalar_t__ EVP_PKEY_decrypt_init (int *) ;
 scalar_t__ EVP_PKEY_derive_set_peer (int *,int *) ;
 int PACKET_as_length_prefixed_1 (int *,int *) ;
 unsigned char* PACKET_data (int *) ;
 int PACKET_forward (int *,int) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_peek_1 (int *,unsigned int*) ;
 size_t PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_CKE_GOST ;
 size_t SSL_PKEY_GOST01 ;
 size_t SSL_PKEY_GOST12_256 ;
 size_t SSL_PKEY_GOST12_512 ;
 int SSL_R_DECRYPTION_FAILED ;
 unsigned long SSL_aGOST01 ;
 unsigned long SSL_aGOST12 ;
 int SSLfatal (TYPE_8__*,int ,int ,int ) ;
 unsigned int V_ASN1_CONSTRUCTED ;
 unsigned int V_ASN1_SEQUENCE ;
 int * X509_get0_pubkey (int ) ;
 int ssl_generate_master_secret (TYPE_8__*,unsigned char*,int,int ) ;

__attribute__((used)) static int tls_process_cke_gost(SSL *s, PACKET *pkt)
{

    EVP_PKEY_CTX *pkey_ctx;
    EVP_PKEY *client_pub_pkey = ((void*)0), *pk = ((void*)0);
    unsigned char premaster_secret[32];
    const unsigned char *start;
    size_t outlen = 32, inlen;
    unsigned long alg_a;
    unsigned int asn1id, asn1len;
    int ret = 0;
    PACKET encdata;


    alg_a = s->s3.tmp.new_cipher->algorithm_auth;
    if (alg_a & SSL_aGOST12) {



        pk = s->cert->pkeys[SSL_PKEY_GOST12_512].privatekey;
        if (pk == ((void*)0)) {
            pk = s->cert->pkeys[SSL_PKEY_GOST12_256].privatekey;
        }
        if (pk == ((void*)0)) {
            pk = s->cert->pkeys[SSL_PKEY_GOST01].privatekey;
        }
    } else if (alg_a & SSL_aGOST01) {
        pk = s->cert->pkeys[SSL_PKEY_GOST01].privatekey;
    }

    pkey_ctx = EVP_PKEY_CTX_new(pk, ((void*)0));
    if (pkey_ctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_GOST,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (EVP_PKEY_decrypt_init(pkey_ctx) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_GOST,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }






    client_pub_pkey = X509_get0_pubkey(s->session->peer);
    if (client_pub_pkey) {
        if (EVP_PKEY_derive_set_peer(pkey_ctx, client_pub_pkey) <= 0)
            ERR_clear_error();
    }

    if (!PACKET_get_1(pkt, &asn1id)
            || asn1id != (V_ASN1_SEQUENCE | V_ASN1_CONSTRUCTED)
            || !PACKET_peek_1(pkt, &asn1len)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_GOST,
                 SSL_R_DECRYPTION_FAILED);
        goto err;
    }
    if (asn1len == 0x81) {





        if (!PACKET_forward(pkt, 1)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_GOST,
                     SSL_R_DECRYPTION_FAILED);
            goto err;
        }
    } else if (asn1len >= 0x80) {




        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_GOST,
                 SSL_R_DECRYPTION_FAILED);
        goto err;
    }

    if (!PACKET_as_length_prefixed_1(pkt, &encdata)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_GOST,
                 SSL_R_DECRYPTION_FAILED);
        goto err;
    }
    inlen = PACKET_remaining(&encdata);
    start = PACKET_data(&encdata);

    if (EVP_PKEY_decrypt(pkey_ctx, premaster_secret, &outlen, start,
                         inlen) <= 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_GOST,
                 SSL_R_DECRYPTION_FAILED);
        goto err;
    }

    if (!ssl_generate_master_secret(s, premaster_secret,
                                    sizeof(premaster_secret), 0)) {

        goto err;
    }

    if (EVP_PKEY_CTX_ctrl(pkey_ctx, -1, -1, EVP_PKEY_CTRL_PEER_KEY, 2,
                          ((void*)0)) > 0)
        s->statem.no_cert_verify = 1;

    ret = 1;
 err:
    EVP_PKEY_CTX_free(pkey_ctx);
    return ret;






}
