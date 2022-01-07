
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_str_t ;
struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ ngx_rtmp_eval_t ;



__attribute__((used)) static void
ngx_rtmp_eval_session_str(void *ctx, ngx_rtmp_eval_t *e, ngx_str_t *ret)
{
    *ret = *(ngx_str_t *) ((u_char *) ctx + e->offset);
}
