
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int u_char ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {scalar_t__ len; } ;
struct TYPE_21__ {scalar_t__ content_length_n; int chunked; scalar_t__ connection_type; TYPE_6__* keep_alive; int keep_alive_n; TYPE_4__* transfer_encoding; TYPE_2__* content_length; int * host; TYPE_11__ server; } ;
struct TYPE_23__ {scalar_t__ http_version; scalar_t__ method; TYPE_7__ headers_in; TYPE_3__* connection; } ;
typedef TYPE_9__ ngx_http_request_t ;
struct TYPE_22__ {int len; int data; } ;
struct TYPE_19__ {int len; int data; } ;
struct TYPE_20__ {TYPE_5__ value; } ;
struct TYPE_18__ {TYPE_8__ value; } ;
struct TYPE_17__ {int log; } ;
struct TYPE_15__ {int len; int data; } ;
struct TYPE_16__ {TYPE_1__ value; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_BAD_REQUEST ;
 scalar_t__ NGX_HTTP_CONNECTION_KEEP_ALIVE ;
 int NGX_HTTP_NOT_ALLOWED ;
 int NGX_HTTP_NOT_IMPLEMENTED ;
 scalar_t__ NGX_HTTP_TRACE ;
 scalar_t__ NGX_HTTP_VERSION_10 ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_atoof (int ,int ) ;
 int ngx_atotm (int ,int ) ;
 int ngx_http_finalize_request (TYPE_9__*,int ) ;
 scalar_t__ ngx_http_set_virtual_server (TYPE_9__*,TYPE_11__*) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 scalar_t__ ngx_strncasecmp (int ,int *,int) ;

ngx_int_t
ngx_http_process_request_header(ngx_http_request_t *r)
{
    if (r->headers_in.server.len == 0
        && ngx_http_set_virtual_server(r, &r->headers_in.server)
           == NGX_ERROR)
    {
        return NGX_ERROR;
    }

    if (r->headers_in.host == ((void*)0) && r->http_version > NGX_HTTP_VERSION_10) {
        ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                   "client sent HTTP/1.1 request without \"Host\" header");
        ngx_http_finalize_request(r, NGX_HTTP_BAD_REQUEST);
        return NGX_ERROR;
    }

    if (r->headers_in.content_length) {
        r->headers_in.content_length_n =
                            ngx_atoof(r->headers_in.content_length->value.data,
                                      r->headers_in.content_length->value.len);

        if (r->headers_in.content_length_n == NGX_ERROR) {
            ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                          "client sent invalid \"Content-Length\" header");
            ngx_http_finalize_request(r, NGX_HTTP_BAD_REQUEST);
            return NGX_ERROR;
        }
    }

    if (r->method == NGX_HTTP_TRACE) {
        ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                      "client sent TRACE method");
        ngx_http_finalize_request(r, NGX_HTTP_NOT_ALLOWED);
        return NGX_ERROR;
    }

    if (r->headers_in.transfer_encoding) {
        if (r->headers_in.transfer_encoding->value.len == 7
            && ngx_strncasecmp(r->headers_in.transfer_encoding->value.data,
                               (u_char *) "chunked", 7) == 0)
        {
            r->headers_in.content_length = ((void*)0);
            r->headers_in.content_length_n = -1;
            r->headers_in.chunked = 1;

        } else if (r->headers_in.transfer_encoding->value.len != 8
            || ngx_strncasecmp(r->headers_in.transfer_encoding->value.data,
                               (u_char *) "identity", 8) != 0)
        {
            ngx_log_error(NGX_LOG_INFO, r->connection->log, 0,
                          "client sent unknown \"Transfer-Encoding\": \"%V\"",
                          &r->headers_in.transfer_encoding->value);
            ngx_http_finalize_request(r, NGX_HTTP_NOT_IMPLEMENTED);
            return NGX_ERROR;
        }
    }

    if (r->headers_in.connection_type == NGX_HTTP_CONNECTION_KEEP_ALIVE) {
        if (r->headers_in.keep_alive) {
            r->headers_in.keep_alive_n =
                            ngx_atotm(r->headers_in.keep_alive->value.data,
                                      r->headers_in.keep_alive->value.len);
        }
    }

    return NGX_OK;
}
