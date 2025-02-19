
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int uri; int host; } ;
typedef TYPE_1__ ngx_url_t ;
typedef size_t ngx_uint_t ;
typedef int ngx_rtmp_session_t ;
struct TYPE_12__ {scalar_t__ method; TYPE_1__** url; } ;
typedef TYPE_2__ ngx_rtmp_notify_app_conf_t ;
typedef int ngx_pool_t ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
typedef TYPE_3__ ngx_chain_t ;


 scalar_t__ NGX_RTMP_NETCALL_HTTP_POST ;
 TYPE_2__* ngx_rtmp_get_module_app_conf (int *,int ) ;
 TYPE_3__* ngx_rtmp_netcall_http_format_request (scalar_t__,int *,int *,TYPE_3__*,TYPE_3__*,int *,int *) ;
 TYPE_3__* ngx_rtmp_netcall_http_format_session (int *,int *) ;
 int ngx_rtmp_notify_module ;
 int ngx_rtmp_notify_urlencoded ;

__attribute__((used)) static ngx_chain_t *
ngx_rtmp_notify_create_request(ngx_rtmp_session_t *s, ngx_pool_t *pool,
                                   ngx_uint_t url_idx, ngx_chain_t *args)
{
    ngx_rtmp_notify_app_conf_t *nacf;
    ngx_chain_t *al, *bl, *cl;
    ngx_url_t *url;

    nacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_notify_module);

    url = nacf->url[url_idx];

    al = ngx_rtmp_netcall_http_format_session(s, pool);
    if (al == ((void*)0)) {
        return ((void*)0);
    }

    al->next = args;

    bl = ((void*)0);

    if (nacf->method == NGX_RTMP_NETCALL_HTTP_POST) {
        cl = al;
        al = bl;
        bl = cl;
    }

    return ngx_rtmp_netcall_http_format_request(nacf->method, &url->host,
                                                &url->uri, al, bl, pool,
                                                &ngx_rtmp_notify_urlencoded);
}
