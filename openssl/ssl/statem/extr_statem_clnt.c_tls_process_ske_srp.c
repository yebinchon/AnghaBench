
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* new_cipher; } ;
struct TYPE_13__ {TYPE_3__ tmp; } ;
struct TYPE_10__ {int * B; int * s; int * g; int * N; } ;
struct TYPE_15__ {TYPE_5__* session; TYPE_4__ s3; TYPE_1__ srp_ctx; } ;
struct TYPE_14__ {int peer; } ;
struct TYPE_11__ {int algorithm_auth; } ;
typedef TYPE_6__ SSL ;
typedef int PACKET ;
typedef int EVP_PKEY ;


 void* BN_bin2bn (int ,int,int *) ;
 int ERR_R_BN_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int PACKET_data (int *) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_SKE_SRP ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_aDSS ;
 int SSL_aRSA ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 int * X509_get0_pubkey (int ) ;
 int srp_verify_server_param (TYPE_6__*) ;

__attribute__((used)) static int tls_process_ske_srp(SSL *s, PACKET *pkt, EVP_PKEY **pkey)
{

    PACKET prime, generator, salt, server_pub;

    if (!PACKET_get_length_prefixed_2(pkt, &prime)
        || !PACKET_get_length_prefixed_2(pkt, &generator)
        || !PACKET_get_length_prefixed_1(pkt, &salt)
        || !PACKET_get_length_prefixed_2(pkt, &server_pub)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SKE_SRP,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }


    if ((s->srp_ctx.N =
         BN_bin2bn(PACKET_data(&prime),
                   (int)PACKET_remaining(&prime), ((void*)0))) == ((void*)0)
        || (s->srp_ctx.g =
            BN_bin2bn(PACKET_data(&generator),
                      (int)PACKET_remaining(&generator), ((void*)0))) == ((void*)0)
        || (s->srp_ctx.s =
            BN_bin2bn(PACKET_data(&salt),
                      (int)PACKET_remaining(&salt), ((void*)0))) == ((void*)0)
        || (s->srp_ctx.B =
            BN_bin2bn(PACKET_data(&server_pub),
                      (int)PACKET_remaining(&server_pub), ((void*)0))) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SKE_SRP,
                 ERR_R_BN_LIB);
        return 0;
    }

    if (!srp_verify_server_param(s)) {

        return 0;
    }


    if (s->s3.tmp.new_cipher->algorithm_auth & (SSL_aRSA | SSL_aDSS))
        *pkey = X509_get0_pubkey(s->session->peer);

    return 1;





}
