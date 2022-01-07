
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* (* SRP_give_srp_client_pwd_callback ) (TYPE_2__*,int ) ;int a; int g; int B; int N; int login; int s; int SRP_cb_arg; int A; } ;
struct TYPE_8__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL ;
typedef int BIGNUM ;


 int BN_bn2bin (int *,unsigned char*) ;
 int BN_clear_free (int *) ;
 int BN_num_bytes (int *) ;
 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_clear_free (char*,int ) ;
 unsigned char* OPENSSL_malloc (int) ;
 int * SRP_Calc_client_key (int ,int ,int ,int *,int ,int *) ;
 int * SRP_Calc_u (int ,int ,int ) ;
 int * SRP_Calc_x (int ,int ,char*) ;
 scalar_t__ SRP_Verify_B_mod_N (int ,int ) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET ;
 int SSL_R_CALLBACK_FAILED ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int ssl_generate_master_secret (TYPE_2__*,unsigned char*,int,int) ;
 int strlen (char*) ;
 char* stub1 (TYPE_2__*,int ) ;

int srp_generate_client_master_secret(SSL *s)
{
    BIGNUM *x = ((void*)0), *u = ((void*)0), *K = ((void*)0);
    int ret = -1, tmp_len = 0;
    char *passwd = ((void*)0);
    unsigned char *tmp = ((void*)0);




    if (SRP_Verify_B_mod_N(s->srp_ctx.B, s->srp_ctx.N) == 0
            || (u = SRP_Calc_u(s->srp_ctx.A, s->srp_ctx.B, s->srp_ctx.N))
               == ((void*)0)
            || s->srp_ctx.SRP_give_srp_client_pwd_callback == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET, ERR_R_INTERNAL_ERROR);
        goto err;
    }
    if ((passwd = s->srp_ctx.SRP_give_srp_client_pwd_callback(s,
                                                      s->srp_ctx.SRP_cb_arg))
            == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET,
                 SSL_R_CALLBACK_FAILED);
        goto err;
    }
    if ((x = SRP_Calc_x(s->srp_ctx.s, s->srp_ctx.login, passwd)) == ((void*)0)
            || (K = SRP_Calc_client_key(s->srp_ctx.N, s->srp_ctx.B,
                                        s->srp_ctx.g, x,
                                        s->srp_ctx.a, u)) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET, ERR_R_INTERNAL_ERROR);
        goto err;
    }

    tmp_len = BN_num_bytes(K);
    if ((tmp = OPENSSL_malloc(tmp_len)) == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_SRP_GENERATE_CLIENT_MASTER_SECRET, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    BN_bn2bin(K, tmp);

    ret = ssl_generate_master_secret(s, tmp, tmp_len, 1);
 err:
    BN_clear_free(K);
    BN_clear_free(x);
    if (passwd != ((void*)0))
        OPENSSL_clear_free(passwd, strlen(passwd));
    BN_clear_free(u);
    return ret;
}
