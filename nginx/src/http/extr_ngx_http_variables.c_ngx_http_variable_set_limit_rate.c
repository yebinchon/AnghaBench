
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_10__ {int data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_11__ {int data; int len; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_12__ {int limit_rate_set; scalar_t__ limit_rate; TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_9__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_2__*) ;
 scalar_t__ ngx_parse_size (TYPE_2__*) ;

__attribute__((used)) static void
ngx_http_variable_set_limit_rate(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ssize_t s;
    ngx_str_t val;

    val.len = v->len;
    val.data = v->data;

    s = ngx_parse_size(&val);

    if (s == NGX_ERROR) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "invalid $limit_rate \"%V\"", &val);
        return;
    }

    r->limit_rate = s;
    r->limit_rate_set = 1;
}
