
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_22__ {int len; int data; } ;
typedef TYPE_7__ ngx_str_t ;
struct TYPE_20__ {int len; int data; } ;
struct TYPE_19__ {int len; int data; } ;
struct TYPE_18__ {int len; int data; } ;
struct TYPE_17__ {int len; int data; } ;
struct TYPE_16__ {int len; int data; } ;
struct TYPE_23__ {TYPE_6__* connection; TYPE_5__ page_url; TYPE_4__ tc_url; TYPE_3__ swf_url; TYPE_2__ flashver; TYPE_1__ app; } ;
typedef TYPE_8__ ngx_rtmp_session_t ;
typedef int ngx_pool_t ;
struct TYPE_24__ {int * next; TYPE_10__* buf; } ;
typedef TYPE_9__ ngx_chain_t ;
struct TYPE_15__ {int * last; } ;
typedef TYPE_10__ ngx_buf_t ;
struct TYPE_21__ {scalar_t__ number; TYPE_7__ addr_text; } ;


 int NGX_ESCAPE_ARGS ;
 scalar_t__ NGX_INT_T_LEN ;
 TYPE_9__* ngx_alloc_chain_link (int *) ;
 void* ngx_cpymem (int *,int *,int) ;
 TYPE_10__* ngx_create_temp_buf (int *,scalar_t__) ;
 scalar_t__ ngx_escape_uri (int *,int ,int,int ) ;
 int * ngx_sprintf (int *,char*,int ) ;

ngx_chain_t *
ngx_rtmp_netcall_http_format_session(ngx_rtmp_session_t *s, ngx_pool_t *pool)
{
    ngx_chain_t *cl;
    ngx_buf_t *b;
    ngx_str_t *addr_text;

    addr_text = &s->connection->addr_text;

    cl = ngx_alloc_chain_link(pool);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    b = ngx_create_temp_buf(pool,
            sizeof("app=") - 1 + s->app.len * 3 +
            sizeof("&flashver=") - 1 + s->flashver.len * 3 +
            sizeof("&swfurl=") - 1 + s->swf_url.len * 3 +
            sizeof("&tcurl=") - 1 + s->tc_url.len * 3 +
            sizeof("&pageurl=") - 1 + s->page_url.len * 3 +
            sizeof("&addr=") - 1 + addr_text->len * 3 +
            sizeof("&clientid=") - 1 + NGX_INT_T_LEN
        );

    if (b == ((void*)0)) {
        return ((void*)0);
    }

    cl->buf = b;
    cl->next = ((void*)0);

    b->last = ngx_cpymem(b->last, (u_char*) "app=", sizeof("app=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, s->app.data, s->app.len,
                                       NGX_ESCAPE_ARGS);

    b->last = ngx_cpymem(b->last, (u_char*) "&flashver=",
                         sizeof("&flashver=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, s->flashver.data,
                                       s->flashver.len, NGX_ESCAPE_ARGS);

    b->last = ngx_cpymem(b->last, (u_char*) "&swfurl=",
                         sizeof("&swfurl=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, s->swf_url.data,
                                       s->swf_url.len, NGX_ESCAPE_ARGS);

    b->last = ngx_cpymem(b->last, (u_char*) "&tcurl=",
                         sizeof("&tcurl=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, s->tc_url.data,
                                       s->tc_url.len, NGX_ESCAPE_ARGS);

    b->last = ngx_cpymem(b->last, (u_char*) "&pageurl=",
                         sizeof("&pageurl=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, s->page_url.data,
                                       s->page_url.len, NGX_ESCAPE_ARGS);

    b->last = ngx_cpymem(b->last, (u_char*) "&addr=", sizeof("&addr=") - 1);
    b->last = (u_char*) ngx_escape_uri(b->last, addr_text->data,
                                       addr_text->len, NGX_ESCAPE_ARGS);

    b->last = ngx_cpymem(b->last, (u_char*) "&clientid=",
                         sizeof("&clientid=") - 1);
    b->last = ngx_sprintf(b->last, "%ui", (ngx_uint_t) s->connection->number);

    return cl;
}
