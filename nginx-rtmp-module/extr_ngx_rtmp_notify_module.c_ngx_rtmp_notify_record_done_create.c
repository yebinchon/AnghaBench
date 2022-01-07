
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_rtmp_session_t ;
struct TYPE_14__ {int len; int * data; } ;
struct TYPE_13__ {int len; int * data; } ;
struct TYPE_15__ {TYPE_2__ path; TYPE_1__ recorder; } ;
typedef TYPE_3__ ngx_rtmp_record_done_t ;
struct TYPE_16__ {int * args; int * name; } ;
typedef TYPE_4__ ngx_rtmp_notify_ctx_t ;
typedef int ngx_pool_t ;
struct TYPE_17__ {int * next; TYPE_6__* buf; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_18__ {int * last; } ;
typedef TYPE_6__ ngx_buf_t ;


 int NGX_ESCAPE_ARGS ;
 int NGX_RTMP_NOTIFY_RECORD_DONE ;
 TYPE_5__* ngx_alloc_chain_link (int *) ;
 void* ngx_cpymem (int *,int *,size_t) ;
 TYPE_6__* ngx_create_temp_buf (int *,int) ;
 scalar_t__ ngx_escape_uri (int *,int *,size_t,int ) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (int *,int ) ;
 TYPE_5__* ngx_rtmp_notify_create_request (int *,int *,int ,TYPE_5__*) ;
 int ngx_rtmp_notify_module ;
 size_t ngx_strlen (int *) ;

__attribute__((used)) static ngx_chain_t *
ngx_rtmp_notify_record_done_create(ngx_rtmp_session_t *s, void *arg,
                                   ngx_pool_t *pool)
{
    ngx_rtmp_record_done_t *v = arg;

    ngx_rtmp_notify_ctx_t *ctx;
    ngx_chain_t *pl;
    ngx_buf_t *b;
    size_t name_len, args_len;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_notify_module);

    pl = ngx_alloc_chain_link(pool);
    if (pl == ((void*)0)) {
        return ((void*)0);
    }

    name_len = ngx_strlen(ctx->name);
    args_len = ngx_strlen(ctx->args);

    b = ngx_create_temp_buf(pool,
                            sizeof("&call=record_done") +
                            sizeof("&recorder=") + v->recorder.len +
                            sizeof("&name=") + name_len * 3 +
                            sizeof("&path=") + v->path.len * 3 +
                            1 + args_len);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    pl->buf = b;
    pl->next = ((void*)0);

    b->last = ngx_cpymem(b->last, (u_char*) "&call=record_done",
                         sizeof("&call=record_done") - 1);

    b->last = ngx_cpymem(b->last, (u_char *) "&recorder=",
                         sizeof("&recorder=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, v->recorder.data,
                                       v->recorder.len, NGX_ESCAPE_ARGS);

    b->last = ngx_cpymem(b->last, (u_char*) "&name=", sizeof("&name=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, ctx->name, name_len,
                                       NGX_ESCAPE_ARGS);

    b->last = ngx_cpymem(b->last, (u_char*) "&path=", sizeof("&path=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, v->path.data, v->path.len,
                                       NGX_ESCAPE_ARGS);

    if (args_len) {
        *b->last++ = '&';
        b->last = (u_char *) ngx_cpymem(b->last, ctx->args, args_len);
    }

    return ngx_rtmp_notify_create_request(s, pool, NGX_RTMP_NOTIFY_RECORD_DONE,
                                          pl);
}
