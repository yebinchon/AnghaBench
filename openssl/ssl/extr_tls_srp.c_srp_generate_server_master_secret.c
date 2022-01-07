
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int N; int b; int v; int A; int B; } ;
struct TYPE_7__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL ;
typedef int BIGNUM ;


 int BN_bn2bin (int *,unsigned char*) ;
 int BN_clear_free (int *) ;
 int BN_num_bytes (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_malloc (int) ;
 int * SRP_Calc_server_key (int ,int ,int *,int ,int ) ;
 int * SRP_Calc_u (int ,int ,int ) ;
 int SRP_Verify_A_mod_N (int ,int ) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SRP_GENERATE_SERVER_MASTER_SECRET ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int ssl_generate_master_secret (TYPE_2__*,unsigned char*,int,int) ;

int srp_generate_server_master_secret(SSL *s)
{
    BIGNUM *K = ((void*)0), *u = ((void*)0);
    int ret = -1, tmp_len = 0;
    unsigned char *tmp = ((void*)0);

    if (!SRP_Verify_A_mod_N(s->srp_ctx.A, s->srp_ctx.N))
        goto err;
    if ((u = SRP_Calc_u(s->srp_ctx.A, s->srp_ctx.B, s->srp_ctx.N)) == ((void*)0))
        goto err;
    if ((K = SRP_Calc_server_key(s->srp_ctx.A, s->srp_ctx.v, u, s->srp_ctx.b,
                                 s->srp_ctx.N)) == ((void*)0))
        goto err;

    tmp_len = BN_num_bytes(K);
    if ((tmp = OPENSSL_malloc(tmp_len)) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_SRP_GENERATE_SERVER_MASTER_SECRET, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    BN_bn2bin(K, tmp);

    ret = ssl_generate_master_secret(s, tmp, tmp_len, 1);
 err:
    BN_clear_free(K);
    BN_clear_free(u);
    return ret;
}
