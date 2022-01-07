
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef int ngx_rtmp_session_t ;
struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ ngx_rtmp_log_op_t ;
typedef int ngx_rtmp_log_ctx_t ;


 int * ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_log_module ;

__attribute__((used)) static u_char *
ngx_rtmp_log_var_context_cstring_getdata(ngx_rtmp_session_t *s, u_char *buf,
    ngx_rtmp_log_op_t *op)
{
    ngx_rtmp_log_ctx_t *ctx;
    u_char *p;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_log_module);
    if (ctx == ((void*)0)) {
        return buf;
    }

    p = (u_char *) ctx + op->offset;
    while (*p) {
        *buf++ = *p++;
    }

    return buf;
}
