
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_ssl_conn_t ;
struct TYPE_5__ {TYPE_1__* ssl; int log; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_4__ {int renegotiation; int handshake_buffer_set; scalar_t__ handshaked; } ;
typedef int BIO ;


 int BIO_set_write_buffer_size (int *,int ) ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_SSL_BUFSIZE ;
 int SSL_CB_ACCEPT_LOOP ;
 int SSL_CB_HANDSHAKE_START ;
 int * SSL_get_rbio (int const*) ;
 int * SSL_get_wbio (int const*) ;
 scalar_t__ SSL_is_server (int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_2__* ngx_ssl_get_connection (int *) ;

__attribute__((used)) static void
ngx_ssl_info_callback(const ngx_ssl_conn_t *ssl_conn, int where, int ret)
{
    BIO *rbio, *wbio;
    ngx_connection_t *c;



    if ((where & SSL_CB_HANDSHAKE_START)
        && SSL_is_server((ngx_ssl_conn_t *) ssl_conn))
    {
        c = ngx_ssl_get_connection((ngx_ssl_conn_t *) ssl_conn);

        if (c->ssl->handshaked) {
            c->ssl->renegotiation = 1;
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL renegotiation");
        }
    }



    if ((where & SSL_CB_ACCEPT_LOOP) == SSL_CB_ACCEPT_LOOP) {
        c = ngx_ssl_get_connection((ngx_ssl_conn_t *) ssl_conn);

        if (!c->ssl->handshake_buffer_set) {
            rbio = SSL_get_rbio(ssl_conn);
            wbio = SSL_get_wbio(ssl_conn);

            if (rbio != wbio) {
                (void) BIO_set_write_buffer_size(wbio, NGX_SSL_BUFSIZE);
                c->ssl->handshake_buffer_set = 1;
            }
        }
    }
}
