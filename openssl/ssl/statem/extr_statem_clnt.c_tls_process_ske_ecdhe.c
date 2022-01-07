
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* new_cipher; } ;
struct TYPE_11__ {TYPE_2__ tmp; int * peer_tmp; } ;
struct TYPE_13__ {TYPE_4__* session; TYPE_3__ s3; } ;
struct TYPE_12__ {int peer; } ;
struct TYPE_9__ {int algorithm_auth; } ;
typedef TYPE_5__ SSL ;
typedef int PACKET ;
typedef int EVP_PKEY ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_PKEY_set1_tls_encodedpoint (int *,int ,int ) ;
 unsigned int NAMED_CURVE_TYPE ;
 int PACKET_data (int *) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 int PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_SKE_ECDHE ;
 int SSL_R_BAD_ECPOINT ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_LENGTH_TOO_SHORT ;
 int SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS ;
 int SSL_R_WRONG_CURVE ;
 int SSL_aECDSA ;
 int SSL_aRSA ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 int * X509_get0_pubkey (int ) ;
 int * ssl_generate_param_group (unsigned int) ;
 int tls1_check_group_id (TYPE_5__*,unsigned int,int) ;

__attribute__((used)) static int tls_process_ske_ecdhe(SSL *s, PACKET *pkt, EVP_PKEY **pkey)
{

    PACKET encoded_pt;
    unsigned int curve_type, curve_id;






    if (!PACKET_get_1(pkt, &curve_type) || !PACKET_get_net_2(pkt, &curve_id)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_LENGTH_TOO_SHORT);
        return 0;
    }




    if (curve_type != NAMED_CURVE_TYPE
            || !tls1_check_group_id(s, curve_id, 1)) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_WRONG_CURVE);
        return 0;
    }

    if ((s->s3.peer_tmp = ssl_generate_param_group(curve_id)) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_UNABLE_TO_FIND_ECDH_PARAMETERS);
        return 0;
    }

    if (!PACKET_get_length_prefixed_1(pkt, &encoded_pt)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    if (!EVP_PKEY_set1_tls_encodedpoint(s->s3.peer_tmp,
                                        PACKET_data(&encoded_pt),
                                        PACKET_remaining(&encoded_pt))) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_SKE_ECDHE,
                 SSL_R_BAD_ECPOINT);
        return 0;
    }






    if (s->s3.tmp.new_cipher->algorithm_auth & SSL_aECDSA)
        *pkey = X509_get0_pubkey(s->session->peer);
    else if (s->s3.tmp.new_cipher->algorithm_auth & SSL_aRSA)
        *pkey = X509_get0_pubkey(s->session->peer);


    return 1;





}
