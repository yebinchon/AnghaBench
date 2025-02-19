
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


typedef int u_char ;
struct TYPE_19__ {size_t len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_20__ {scalar_t__ current_time; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_21__ {int flags; int * args; int * name; scalar_t__ start; } ;
typedef TYPE_3__ ngx_rtmp_notify_ctx_t ;
typedef int ngx_pool_t ;
struct TYPE_22__ {int * next; TYPE_5__* buf; } ;
typedef TYPE_4__ ngx_chain_t ;
struct TYPE_23__ {int * last; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_18__ {scalar_t__ sec; } ;


 int NGX_ESCAPE_ARGS ;
 int NGX_INT32_LEN ;
 int NGX_RTMP_NOTIFY_PLAYING ;
 int NGX_RTMP_NOTIFY_PUBLISHING ;
 int NGX_RTMP_NOTIFY_UPDATE ;
 int NGX_TIME_T_LEN ;
 TYPE_4__* ngx_alloc_chain_link (int *) ;
 TYPE_16__* ngx_cached_time ;
 void* ngx_cpymem (int *,int *,size_t) ;
 TYPE_5__* ngx_create_temp_buf (int *,int) ;
 scalar_t__ ngx_escape_uri (int *,int *,size_t,int ) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 TYPE_4__* ngx_rtmp_notify_create_request (TYPE_2__*,int *,int ,TYPE_4__*) ;
 int ngx_rtmp_notify_module ;
 void* ngx_sprintf (int *,char*,scalar_t__) ;
 int ngx_str_null (TYPE_1__*) ;
 int ngx_str_set (TYPE_1__*,char*) ;
 size_t ngx_strlen (int *) ;

__attribute__((used)) static ngx_chain_t *
ngx_rtmp_notify_update_create(ngx_rtmp_session_t *s, void *arg,
        ngx_pool_t *pool)
{
    ngx_chain_t *pl;
    ngx_buf_t *b;
    size_t name_len, args_len;
    ngx_rtmp_notify_ctx_t *ctx;
    ngx_str_t sfx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_notify_module);

    pl = ngx_alloc_chain_link(pool);
    if (pl == ((void*)0)) {
        return ((void*)0);
    }

    if (ctx->flags & NGX_RTMP_NOTIFY_PUBLISHING) {
        ngx_str_set(&sfx, "_publish");
    } else if (ctx->flags & NGX_RTMP_NOTIFY_PLAYING) {
        ngx_str_set(&sfx, "_play");
    } else {
        ngx_str_null(&sfx);
    }

    name_len = ctx ? ngx_strlen(ctx->name) : 0;
    args_len = ctx ? ngx_strlen(ctx->args) : 0;

    b = ngx_create_temp_buf(pool,
                            sizeof("&call=update") + sfx.len +
                            sizeof("&time=") + NGX_TIME_T_LEN +
                            sizeof("&timestamp=") + NGX_INT32_LEN +
                            sizeof("&name=") + name_len * 3 +
                            1 + args_len);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    pl->buf = b;
    pl->next = ((void*)0);

    b->last = ngx_cpymem(b->last, (u_char*) "&call=update",
                         sizeof("&call=update") - 1);
    b->last = ngx_cpymem(b->last, sfx.data, sfx.len);

    b->last = ngx_cpymem(b->last, (u_char *) "&time=",
                         sizeof("&time=") - 1);
    b->last = ngx_sprintf(b->last, "%T", ngx_cached_time->sec - ctx->start);

    b->last = ngx_cpymem(b->last, (u_char *) "&timestamp=",
                         sizeof("&timestamp=") - 1);
    b->last = ngx_sprintf(b->last, "%D", s->current_time);

    if (name_len) {
        b->last = ngx_cpymem(b->last, (u_char*) "&name=", sizeof("&name=") - 1);
        b->last = (u_char*) ngx_escape_uri(b->last, ctx->name, name_len,
                                           NGX_ESCAPE_ARGS);
    }

    if (args_len) {
        *b->last++ = '&';
        b->last = (u_char *) ngx_cpymem(b->last, ctx->args, args_len);
    }

    return ngx_rtmp_notify_create_request(s, pool, NGX_RTMP_NOTIFY_UPDATE, pl);
}
