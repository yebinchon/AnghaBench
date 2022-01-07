
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_str_t ;
struct TYPE_4__ {scalar_t__ connection; } ;
typedef TYPE_1__ ngx_rtmp_session_t ;
struct TYPE_5__ {int offset; } ;
typedef TYPE_2__ ngx_rtmp_eval_t ;



__attribute__((used)) static void
ngx_rtmp_eval_connection_str(void *ctx, ngx_rtmp_eval_t *e, ngx_str_t *ret)
{
    ngx_rtmp_session_t *s = ctx;

    *ret = *(ngx_str_t *) ((u_char *) s->connection + e->offset);
}
