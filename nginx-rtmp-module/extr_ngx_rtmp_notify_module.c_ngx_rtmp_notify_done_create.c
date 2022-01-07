
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_rtmp_session_t ;
struct TYPE_11__ {int url_idx; int * cbname; } ;
typedef TYPE_1__ ngx_rtmp_notify_done_t ;
struct TYPE_12__ {int * args; int * name; } ;
typedef TYPE_2__ ngx_rtmp_notify_ctx_t ;
typedef int ngx_pool_t ;
struct TYPE_13__ {int * next; TYPE_4__* buf; } ;
typedef TYPE_3__ ngx_chain_t ;
struct TYPE_14__ {int * last; } ;
typedef TYPE_4__ ngx_buf_t ;


 int NGX_ESCAPE_ARGS ;
 TYPE_3__* ngx_alloc_chain_link (int *) ;
 void* ngx_cpymem (int *,int *,size_t) ;
 TYPE_4__* ngx_create_temp_buf (int *,int) ;
 scalar_t__ ngx_escape_uri (int *,int *,size_t,int ) ;
 TYPE_2__* ngx_rtmp_get_module_ctx (int *,int ) ;
 TYPE_3__* ngx_rtmp_notify_create_request (int *,int *,int ,TYPE_3__*) ;
 int ngx_rtmp_notify_module ;
 size_t ngx_strlen (int *) ;

__attribute__((used)) static ngx_chain_t *
ngx_rtmp_notify_done_create(ngx_rtmp_session_t *s, void *arg,
        ngx_pool_t *pool)
{
    ngx_rtmp_notify_done_t *ds = arg;

    ngx_chain_t *pl;
    ngx_buf_t *b;
    size_t cbname_len, name_len, args_len;
    ngx_rtmp_notify_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_notify_module);

    pl = ngx_alloc_chain_link(pool);
    if (pl == ((void*)0)) {
        return ((void*)0);
    }

    cbname_len = ngx_strlen(ds->cbname);
    name_len = ctx ? ngx_strlen(ctx->name) : 0;
    args_len = ctx ? ngx_strlen(ctx->args) : 0;

    b = ngx_create_temp_buf(pool,
                            sizeof("&call=") + cbname_len +
                            sizeof("&name=") + name_len * 3 +
                            1 + args_len);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    pl->buf = b;
    pl->next = ((void*)0);

    b->last = ngx_cpymem(b->last, (u_char*) "&call=", sizeof("&call=") - 1);
    b->last = ngx_cpymem(b->last, ds->cbname, cbname_len);

    if (name_len) {
        b->last = ngx_cpymem(b->last, (u_char*) "&name=", sizeof("&name=") - 1);
        b->last = (u_char*) ngx_escape_uri(b->last, ctx->name, name_len,
                                           NGX_ESCAPE_ARGS);
    }

    if (args_len) {
        *b->last++ = '&';
        b->last = (u_char *) ngx_cpymem(b->last, ctx->args, args_len);
    }

    return ngx_rtmp_notify_create_request(s, pool, ds->url_idx, pl);
}
