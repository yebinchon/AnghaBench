
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_9__ {int len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_8__ {int data; int len; } ;
struct TYPE_10__ {int (* handler ) (void*,TYPE_3__*,TYPE_2__*) ;TYPE_1__ name; } ;
typedef TYPE_3__ ngx_rtmp_eval_t ;
typedef int ngx_log_t ;
typedef int ngx_buf_t ;


 scalar_t__ ngx_memcmp (int ,int ,int ) ;
 int ngx_rtmp_eval_append (int *,int ,int ,int *) ;
 int stub1 (void*,TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void
ngx_rtmp_eval_append_var(void *ctx, ngx_buf_t *b, ngx_rtmp_eval_t **e,
    ngx_str_t *name, ngx_log_t *log)
{
    ngx_uint_t k;
    ngx_str_t v;
    ngx_rtmp_eval_t *ee;

    for (; *e; ++e) {
        for (k = 0, ee = *e; ee->handler; ++k, ++ee) {
            if (ee->name.len == name->len &&
                ngx_memcmp(ee->name.data, name->data, name->len) == 0)
            {
                ee->handler(ctx, ee, &v);
                ngx_rtmp_eval_append(b, v.data, v.len, log);
            }
        }
    }
}
