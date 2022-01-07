
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * session_ticket_app_data; int * srp_password; int * srp_user; int * alpn_protocols; int * npn_protocols; } ;
typedef TYPE_1__ CTX_DATA ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void ctx_data_free_data(CTX_DATA *ctx_data)
{
    OPENSSL_free(ctx_data->npn_protocols);
    ctx_data->npn_protocols = ((void*)0);
    OPENSSL_free(ctx_data->alpn_protocols);
    ctx_data->alpn_protocols = ((void*)0);
    OPENSSL_free(ctx_data->srp_user);
    ctx_data->srp_user = ((void*)0);
    OPENSSL_free(ctx_data->srp_password);
    ctx_data->srp_password = ((void*)0);
    OPENSSL_free(ctx_data->session_ticket_app_data);
    ctx_data->session_ticket_app_data = ((void*)0);
}
