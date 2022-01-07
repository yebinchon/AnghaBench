
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_6__ {int login; int * A; } ;
struct TYPE_8__ {TYPE_2__* session; TYPE_1__ srp_ctx; } ;
struct TYPE_7__ {int * srp_username; } ;
typedef TYPE_3__ SSL ;


 int BN_bn2bin (int *,unsigned char*) ;
 int BN_num_bytes (int *) ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_strdup (int ) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CKE_SRP ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int WPACKET_sub_allocate_bytes_u16 (int *,int ,unsigned char**) ;

__attribute__((used)) static int tls_construct_cke_srp(SSL *s, WPACKET *pkt)
{

    unsigned char *abytes = ((void*)0);

    if (s->srp_ctx.A == ((void*)0)
            || !WPACKET_sub_allocate_bytes_u16(pkt, BN_num_bytes(s->srp_ctx.A),
                                               &abytes)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_SRP,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    BN_bn2bin(s->srp_ctx.A, abytes);

    OPENSSL_free(s->session->srp_username);
    s->session->srp_username = OPENSSL_strdup(s->srp_ctx.login);
    if (s->session->srp_username == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CKE_SRP,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    return 1;





}
