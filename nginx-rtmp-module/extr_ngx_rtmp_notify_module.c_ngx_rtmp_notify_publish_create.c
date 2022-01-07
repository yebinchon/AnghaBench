
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_rtmp_session_t ;
struct TYPE_9__ {int * args; int * type; int * name; } ;
typedef TYPE_1__ ngx_rtmp_publish_t ;
typedef int ngx_pool_t ;
struct TYPE_10__ {int * next; TYPE_3__* buf; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_11__ {int * last; } ;
typedef TYPE_3__ ngx_buf_t ;


 int NGX_ESCAPE_ARGS ;
 int NGX_RTMP_NOTIFY_PUBLISH ;
 TYPE_2__* ngx_alloc_chain_link (int *) ;
 void* ngx_cpymem (int *,int *,size_t) ;
 TYPE_3__* ngx_create_temp_buf (int *,int) ;
 scalar_t__ ngx_escape_uri (int *,int *,size_t,int ) ;
 TYPE_2__* ngx_rtmp_notify_create_request (int *,int *,int ,TYPE_2__*) ;
 size_t ngx_strlen (int *) ;

__attribute__((used)) static ngx_chain_t *
ngx_rtmp_notify_publish_create(ngx_rtmp_session_t *s, void *arg,
        ngx_pool_t *pool)
{
    ngx_rtmp_publish_t *v = arg;

    ngx_chain_t *pl;
    ngx_buf_t *b;
    size_t name_len, type_len, args_len;

    pl = ngx_alloc_chain_link(pool);
    if (pl == ((void*)0)) {
        return ((void*)0);
    }

    name_len = ngx_strlen(v->name);
    type_len = ngx_strlen(v->type);
    args_len = ngx_strlen(v->args);

    b = ngx_create_temp_buf(pool,
                            sizeof("&call=publish") +
                            sizeof("&name=") + name_len * 3 +
                            sizeof("&type=") + type_len * 3 +
                            1 + args_len);
    if (b == ((void*)0)) {
        return ((void*)0);
    }

    pl->buf = b;
    pl->next = ((void*)0);

    b->last = ngx_cpymem(b->last, (u_char*) "&call=publish",
                         sizeof("&call=publish") - 1);

    b->last = ngx_cpymem(b->last, (u_char*) "&name=", sizeof("&name=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, v->name, name_len,
                                       NGX_ESCAPE_ARGS);

    b->last = ngx_cpymem(b->last, (u_char*) "&type=", sizeof("&type=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, v->type, type_len,
                                       NGX_ESCAPE_ARGS);

    if (args_len) {
        *b->last++ = '&';
        b->last = (u_char *) ngx_cpymem(b->last, v->args, args_len);
    }

    return ngx_rtmp_notify_create_request(s, pool, NGX_RTMP_NOTIFY_PUBLISH, pl);
}
