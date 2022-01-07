
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTRL_SET_TLS_EXT_SRP_STRENGTH ;
 int tls1_ctx_ctrl (int *,int ,int,int *) ;

int SSL_CTX_set_srp_strength(SSL_CTX *ctx, int strength)
{
    return tls1_ctx_ctrl(ctx, SSL_CTRL_SET_TLS_EXT_SRP_STRENGTH, strength,
                         ((void*)0));
}
