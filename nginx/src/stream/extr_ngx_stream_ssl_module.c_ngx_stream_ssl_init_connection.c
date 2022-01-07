
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int handshake_timeout; } ;
typedef TYPE_2__ ngx_stream_ssl_conf_t ;
typedef int ngx_stream_session_t ;
struct TYPE_11__ {scalar_t__ tcp_nodelay; } ;
typedef TYPE_3__ ngx_stream_core_srv_conf_t ;
typedef int ngx_ssl_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_12__ {TYPE_1__* ssl; int read; int * data; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_9__ {int handler; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (int ,int ) ;
 scalar_t__ ngx_ssl_create_connection (int *,TYPE_4__*,int ) ;
 scalar_t__ ngx_ssl_handshake (TYPE_4__*) ;
 int ngx_stream_core_module ;
 void* ngx_stream_get_module_srv_conf (int *,int ) ;
 int ngx_stream_ssl_handshake_handler ;
 int ngx_stream_ssl_module ;
 scalar_t__ ngx_tcp_nodelay (TYPE_4__*) ;

__attribute__((used)) static ngx_int_t
ngx_stream_ssl_init_connection(ngx_ssl_t *ssl, ngx_connection_t *c)
{
    ngx_int_t rc;
    ngx_stream_session_t *s;
    ngx_stream_ssl_conf_t *sslcf;
    ngx_stream_core_srv_conf_t *cscf;

    s = c->data;

    cscf = ngx_stream_get_module_srv_conf(s, ngx_stream_core_module);

    if (cscf->tcp_nodelay && ngx_tcp_nodelay(c) != NGX_OK) {
        return NGX_ERROR;
    }

    if (ngx_ssl_create_connection(ssl, c, 0) != NGX_OK) {
        return NGX_ERROR;
    }

    rc = ngx_ssl_handshake(c);

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (rc == NGX_AGAIN) {
        sslcf = ngx_stream_get_module_srv_conf(s, ngx_stream_ssl_module);

        ngx_add_timer(c->read, sslcf->handshake_timeout);

        c->ssl->handler = ngx_stream_ssl_handshake_handler;

        return NGX_AGAIN;
    }



    return NGX_OK;
}
