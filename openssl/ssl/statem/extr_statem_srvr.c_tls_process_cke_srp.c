
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int login; int * A; int N; } ;
struct TYPE_9__ {TYPE_2__* session; TYPE_1__ srp_ctx; } ;
struct TYPE_8__ {int * srp_username; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;


 int * BN_bin2bn (unsigned char const*,unsigned int,int *) ;
 scalar_t__ BN_is_zero (int *) ;
 scalar_t__ BN_ucmp (int *,int ) ;
 int ERR_R_BN_LIB ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_strdup (int ) ;
 int PACKET_get_bytes (int *,unsigned char const**,unsigned int) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PROCESS_CKE_SRP ;
 int SSL_R_BAD_SRP_A_LENGTH ;
 int SSL_R_BAD_SRP_PARAMETERS ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int srp_generate_server_master_secret (TYPE_3__*) ;

__attribute__((used)) static int tls_process_cke_srp(SSL *s, PACKET *pkt)
{

    unsigned int i;
    const unsigned char *data;

    if (!PACKET_get_net_2(pkt, &i)
        || !PACKET_get_bytes(pkt, &data, i)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CKE_SRP,
                 SSL_R_BAD_SRP_A_LENGTH);
        return 0;
    }
    if ((s->srp_ctx.A = BN_bin2bn(data, i, ((void*)0))) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_SRP,
                 ERR_R_BN_LIB);
        return 0;
    }
    if (BN_ucmp(s->srp_ctx.A, s->srp_ctx.N) >= 0 || BN_is_zero(s->srp_ctx.A)) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PROCESS_CKE_SRP,
                 SSL_R_BAD_SRP_PARAMETERS);
        return 0;
    }
    OPENSSL_free(s->session->srp_username);
    s->session->srp_username = OPENSSL_strdup(s->srp_ctx.login);
    if (s->session->srp_username == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CKE_SRP,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!srp_generate_server_master_secret(s)) {

        return 0;
    }

    return 1;






}
