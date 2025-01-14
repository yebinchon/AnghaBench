
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_9__ {scalar_t__ reading_body; TYPE_2__* connection; scalar_t__ stream; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_8__ {int timedout; TYPE_1__* read; } ;
struct TYPE_7__ {scalar_t__ timedout; } ;


 scalar_t__ NGX_HTTP_REQUEST_TIME_OUT ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_do_read_client_request_body (TYPE_3__*) ;
 scalar_t__ ngx_http_v2_read_unbuffered_request_body (TYPE_3__*) ;

ngx_int_t
ngx_http_read_unbuffered_request_body(ngx_http_request_t *r)
{
    ngx_int_t rc;
    if (r->connection->read->timedout) {
        r->connection->timedout = 1;
        return NGX_HTTP_REQUEST_TIME_OUT;
    }

    rc = ngx_http_do_read_client_request_body(r);

    if (rc == NGX_OK) {
        r->reading_body = 0;
    }

    return rc;
}
