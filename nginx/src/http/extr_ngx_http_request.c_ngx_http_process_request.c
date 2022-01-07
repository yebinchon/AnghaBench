
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_17__ {int verify; } ;
typedef TYPE_4__ ngx_http_ssl_srv_conf_t ;
struct TYPE_18__ {int stat_writing; int read_event_handler; scalar_t__ stat_reading; TYPE_1__* http_connection; TYPE_6__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_19__ {TYPE_3__* write; TYPE_12__* read; TYPE_2__* ssl; int log; } ;
typedef TYPE_6__ ngx_connection_t ;
typedef int X509 ;
struct TYPE_16__ {void* handler; } ;
struct TYPE_15__ {int connection; int session_ctx; } ;
struct TYPE_14__ {scalar_t__ ssl; } ;
struct TYPE_13__ {void* handler; scalar_t__ timer_set; } ;


 int NGX_HTTPS_CERT_ERROR ;
 int NGX_HTTPS_NO_CERT ;
 int NGX_HTTP_TO_HTTPS ;
 int NGX_LOG_INFO ;
 int SSL_get0_session (int ) ;
 int * SSL_get_peer_certificate (int ) ;
 long SSL_get_verify_result (int ) ;
 long X509_V_OK ;
 int X509_free (int *) ;
 int X509_verify_cert_error_string (long) ;
 int ngx_atomic_fetch_add (int ,int) ;
 int ngx_del_timer (TYPE_12__*) ;
 int ngx_http_block_reading ;
 int ngx_http_finalize_request (TYPE_5__*,int ) ;
 TYPE_4__* ngx_http_get_module_srv_conf (TYPE_5__*,int ) ;
 int ngx_http_handler (TYPE_5__*) ;
 void* ngx_http_request_handler ;
 int ngx_http_ssl_module ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_ssl_remove_cached_session (int ,int ) ;
 int ngx_ssl_verify_error_optional (long) ;
 int ngx_stat_reading ;
 int ngx_stat_writing ;

void
ngx_http_process_request(ngx_http_request_t *r)
{
    ngx_connection_t *c;

    c = r->connection;
    if (c->read->timer_set) {
        ngx_del_timer(c->read);
    }
    c->read->handler = ngx_http_request_handler;
    c->write->handler = ngx_http_request_handler;
    r->read_event_handler = ngx_http_block_reading;

    ngx_http_handler(r);
}
