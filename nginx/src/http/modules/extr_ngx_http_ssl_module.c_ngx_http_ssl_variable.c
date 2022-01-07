
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; int len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef scalar_t__ (* ngx_ssl_variable_handler_pt ) (TYPE_2__*,int ,TYPE_1__*) ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {int valid; int not_found; scalar_t__ no_cacheable; int len; int data; } ;
typedef TYPE_4__ ngx_http_variable_value_t ;
struct TYPE_11__ {int pool; TYPE_2__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_9__ {scalar_t__ ssl; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_ssl_variable(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    uintptr_t data)
{
    ngx_ssl_variable_handler_pt handler = (ngx_ssl_variable_handler_pt) data;

    ngx_str_t s;

    if (r->connection->ssl) {

        if (handler(r->connection, r->pool, &s) != NGX_OK) {
            return NGX_ERROR;
        }

        v->len = s.len;
        v->data = s.data;

        if (v->len) {
            v->valid = 1;
            v->no_cacheable = 0;
            v->not_found = 0;

            return NGX_OK;
        }
    }

    v->not_found = 1;

    return NGX_OK;
}
