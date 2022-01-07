
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; int len; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_6__ {int data; int len; } ;
struct TYPE_8__ {scalar_t__ valid_unparsed_uri; TYPE_1__ args; } ;
typedef TYPE_3__ ngx_http_request_t ;



__attribute__((used)) static void
ngx_http_variable_set_args(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    r->args.len = v->len;
    r->args.data = v->data;
    r->valid_unparsed_uri = 0;
}
