
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int verify; int ssl; } ;
typedef TYPE_2__ ngx_stream_ssl_conf_t ;
struct TYPE_12__ {TYPE_4__* connection; int ssl; } ;
typedef TYPE_3__ ngx_stream_session_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_13__ {TYPE_1__* ssl; TYPE_9__* log; } ;
typedef TYPE_4__ ngx_connection_t ;
typedef int X509 ;
struct TYPE_14__ {char* action; } ;
struct TYPE_10__ {int connection; int session_ctx; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int SSL_get0_session (int ) ;
 int * SSL_get_peer_certificate (int ) ;
 long SSL_get_verify_result (int ) ;
 long X509_V_OK ;
 int X509_free (int *) ;
 int X509_verify_cert_error_string (long) ;
 int ngx_log_error (int ,TYPE_9__*,int ,char*,...) ;
 int ngx_ssl_remove_cached_session (int ,int ) ;
 int ngx_ssl_verify_error_optional (long) ;
 TYPE_2__* ngx_stream_get_module_srv_conf (TYPE_3__*,int ) ;
 scalar_t__ ngx_stream_ssl_init_connection (int *,TYPE_4__*) ;
 int ngx_stream_ssl_module ;

__attribute__((used)) static ngx_int_t
ngx_stream_ssl_handler(ngx_stream_session_t *s)
{
    long rc;
    X509 *cert;
    ngx_int_t rv;
    ngx_connection_t *c;
    ngx_stream_ssl_conf_t *sslcf;

    if (!s->ssl) {
        return NGX_OK;
    }

    c = s->connection;

    sslcf = ngx_stream_get_module_srv_conf(s, ngx_stream_ssl_module);

    if (c->ssl == ((void*)0)) {
        c->log->action = "SSL handshaking";

        rv = ngx_stream_ssl_init_connection(&sslcf->ssl, c);

        if (rv != NGX_OK) {
            return rv;
        }
    }

    if (sslcf->verify) {
        rc = SSL_get_verify_result(c->ssl->connection);

        if (rc != X509_V_OK
            && (sslcf->verify != 3 || !ngx_ssl_verify_error_optional(rc)))
        {
            ngx_log_error(NGX_LOG_INFO, c->log, 0,
                          "client SSL certificate verify error: (%l:%s)",
                          rc, X509_verify_cert_error_string(rc));

            ngx_ssl_remove_cached_session(c->ssl->session_ctx,
                                       (SSL_get0_session(c->ssl->connection)));
            return NGX_ERROR;
        }

        if (sslcf->verify == 1) {
            cert = SSL_get_peer_certificate(c->ssl->connection);

            if (cert == ((void*)0)) {
                ngx_log_error(NGX_LOG_INFO, c->log, 0,
                              "client sent no required SSL certificate");

                ngx_ssl_remove_cached_session(c->ssl->session_ctx,
                                       (SSL_get0_session(c->ssl->connection)));
                return NGX_ERROR;
            }

            X509_free(cert);
        }
    }

    return NGX_OK;
}
