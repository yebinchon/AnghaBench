
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char ngx_uint_t ;
struct TYPE_15__ {scalar_t__ data; scalar_t__ len; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_16__ {char nelts; TYPE_5__* elts; struct TYPE_16__* next; } ;
typedef TYPE_4__ ngx_list_part_t ;
struct TYPE_14__ {scalar_t__ len; int data; } ;
struct TYPE_17__ {char key; TYPE_3__ value; TYPE_2__ name; } ;
typedef TYPE_5__ ngx_http_ssi_var_t ;
struct TYPE_18__ {char ncaptures; scalar_t__ captures_data; scalar_t__* captures; TYPE_1__* variables; } ;
typedef TYPE_6__ ngx_http_ssi_ctx_t ;
struct TYPE_19__ {int pool; int main; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_13__ {TYPE_4__ part; } ;


 TYPE_6__* ngx_http_get_module_ctx (int ,int ) ;
 int ngx_http_ssi_filter_module ;
 TYPE_3__* ngx_palloc (int ,int) ;
 scalar_t__ ngx_strncmp (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static ngx_str_t *
ngx_http_ssi_get_variable(ngx_http_request_t *r, ngx_str_t *name,
    ngx_uint_t key)
{
    ngx_uint_t i;
    ngx_list_part_t *part;
    ngx_http_ssi_var_t *var;
    ngx_http_ssi_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r->main, ngx_http_ssi_filter_module);
    if (ctx->variables == ((void*)0)) {
        return ((void*)0);
    }

    part = &ctx->variables->part;
    var = part->elts;

    for (i = 0; ; i++) {

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }

            part = part->next;
            var = part->elts;
            i = 0;
        }

        if (name->len != var[i].name.len) {
            continue;
        }

        if (key != var[i].key) {
            continue;
        }

        if (ngx_strncmp(name->data, var[i].name.data, name->len) == 0) {
            return &var[i].value;
        }
    }

    return ((void*)0);
}
