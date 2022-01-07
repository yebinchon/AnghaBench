
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef int ngx_int_t ;
struct TYPE_9__ {int not_found; int len; int valid; scalar_t__* data; scalar_t__ no_cacheable; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_8__ {scalar_t__* data; int len; } ;
struct TYPE_10__ {TYPE_2__ request_line; TYPE_1__* header_in; scalar_t__* request_start; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_7__ {scalar_t__* last; } ;


 scalar_t__ CR ;
 scalar_t__ LF ;
 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_request_line(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    u_char *p, *s;

    s = r->request_line.data;

    if (s == ((void*)0)) {
        s = r->request_start;

        if (s == ((void*)0)) {
            v->not_found = 1;
            return NGX_OK;
        }

        for (p = s; p < r->header_in->last; p++) {
            if (*p == CR || *p == LF) {
                break;
            }
        }

        r->request_line.len = p - s;
        r->request_line.data = s;
    }

    v->len = r->request_line.len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = s;

    return NGX_OK;
}
