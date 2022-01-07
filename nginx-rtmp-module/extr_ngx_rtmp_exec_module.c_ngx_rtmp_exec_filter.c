
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_8__ {size_t len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_rtmp_session_t ;
struct TYPE_9__ {int name; } ;
typedef TYPE_3__ ngx_rtmp_exec_ctx_t ;
struct TYPE_7__ {scalar_t__ nelts; TYPE_2__* elts; } ;
struct TYPE_10__ {TYPE_1__ names; } ;
typedef TYPE_4__ ngx_rtmp_exec_conf_t ;
typedef int ngx_int_t ;


 int NGX_DECLINED ;
 int NGX_OK ;
 int ngx_rtmp_exec_module ;
 TYPE_3__* ngx_rtmp_get_module_ctx (int *,int ) ;
 size_t ngx_strlen (int ) ;
 scalar_t__ ngx_strncmp (int ,int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_exec_filter(ngx_rtmp_session_t *s, ngx_rtmp_exec_conf_t *ec)
{
    size_t len;
    ngx_str_t *v;
    ngx_uint_t n;
    ngx_rtmp_exec_ctx_t *ctx;

    if (ec->names.nelts == 0) {
        return NGX_OK;
    }

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_exec_module);

    len = ngx_strlen(ctx->name);

    v = ec->names.elts;
    for (n = 0; n < ec->names.nelts; n++, s++) {
        if (v->len == len && ngx_strncmp(v->data, ctx->name, len) == 0) {
            return NGX_OK;
        }
    }

    return NGX_DECLINED;
}
