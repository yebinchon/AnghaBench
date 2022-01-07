
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_set_ct_validation_callback (int *,int ,int *) ;


 int SSL_F_SSL_CTX_ENABLE_CT ;
 int SSL_R_INVALID_CT_VALIDATION_TYPE ;
 int SSLerr (int ,int ) ;
 int ct_permissive ;
 int ct_strict ;

int SSL_CTX_enable_ct(SSL_CTX *ctx, int validation_mode)
{
    switch (validation_mode) {
    default:
        SSLerr(SSL_F_SSL_CTX_ENABLE_CT, SSL_R_INVALID_CT_VALIDATION_TYPE);
        return 0;
    case 129:
        return SSL_CTX_set_ct_validation_callback(ctx, ct_permissive, ((void*)0));
    case 128:
        return SSL_CTX_set_ct_validation_callback(ctx, ct_strict, ((void*)0));
    }
}
