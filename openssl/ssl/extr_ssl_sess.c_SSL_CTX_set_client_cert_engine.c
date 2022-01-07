
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * client_cert_engine; } ;
typedef TYPE_1__ SSL_CTX ;
typedef int ENGINE ;


 int ENGINE_finish (int *) ;
 int ENGINE_get_ssl_client_cert_function (int *) ;
 int ENGINE_init (int *) ;
 int ERR_R_ENGINE_LIB ;
 int SSL_F_SSL_CTX_SET_CLIENT_CERT_ENGINE ;
 int SSL_R_NO_CLIENT_CERT_METHOD ;
 int SSLerr (int ,int ) ;

int SSL_CTX_set_client_cert_engine(SSL_CTX *ctx, ENGINE *e)
{
    if (!ENGINE_init(e)) {
        SSLerr(SSL_F_SSL_CTX_SET_CLIENT_CERT_ENGINE, ERR_R_ENGINE_LIB);
        return 0;
    }
    if (!ENGINE_get_ssl_client_cert_function(e)) {
        SSLerr(SSL_F_SSL_CTX_SET_CLIENT_CERT_ENGINE,
               SSL_R_NO_CLIENT_CERT_METHOD);
        ENGINE_finish(e);
        return 0;
    }
    ctx->client_cert_engine = e;
    return 1;
}
