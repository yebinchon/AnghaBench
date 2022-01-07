
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rnd ;
struct TYPE_4__ {int g; int N; int a; int A; } ;
struct TYPE_5__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL ;


 int BN_bin2bn (unsigned char*,int,int ) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 scalar_t__ RAND_priv_bytes (unsigned char*,int) ;
 int SRP_Calc_A (int ,int ,int ) ;
 int SSL_MAX_MASTER_KEY_LENGTH ;

int SRP_Calc_A_param(SSL *s)
{
    unsigned char rnd[SSL_MAX_MASTER_KEY_LENGTH];

    if (RAND_priv_bytes(rnd, sizeof(rnd)) <= 0)
        return 0;
    s->srp_ctx.a = BN_bin2bn(rnd, sizeof(rnd), s->srp_ctx.a);
    OPENSSL_cleanse(rnd, sizeof(rnd));

    if (!(s->srp_ctx.A = SRP_Calc_A(s->srp_ctx.a, s->srp_ctx.N, s->srp_ctx.g)))
        return 0;

    return 1;
}
