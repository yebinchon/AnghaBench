
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_16__ {int no_resolve; int no_port; int port; int host; TYPE_2__* addrs; int url; scalar_t__ err; } ;
typedef TYPE_3__ ngx_url_t ;
struct TYPE_17__ {TYPE_10__* resolved; } ;
typedef TYPE_4__ ngx_stream_upstream_t ;
typedef int ngx_stream_upstream_resolved_t ;
struct TYPE_18__ {TYPE_1__* connection; TYPE_4__* upstream; } ;
typedef TYPE_5__ ngx_stream_session_t ;
struct TYPE_19__ {int upstream_value; } ;
typedef TYPE_6__ ngx_stream_proxy_srv_conf_t ;
typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {int name; int socklen; int sockaddr; } ;
struct TYPE_14__ {int pool; int log; } ;
struct TYPE_13__ {int naddrs; int no_port; int port; int host; int name; int socklen; int sockaddr; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__,int *) ;
 int ngx_memzero (TYPE_3__*,int) ;
 scalar_t__ ngx_parse_url (int ,TYPE_3__*) ;
 TYPE_10__* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_stream_complex_value (TYPE_5__*,int ,int *) ;

__attribute__((used)) static ngx_int_t
ngx_stream_proxy_eval(ngx_stream_session_t *s,
    ngx_stream_proxy_srv_conf_t *pscf)
{
    ngx_str_t host;
    ngx_url_t url;
    ngx_stream_upstream_t *u;

    if (ngx_stream_complex_value(s, pscf->upstream_value, &host) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_memzero(&url, sizeof(ngx_url_t));

    url.url = host;
    url.no_resolve = 1;

    if (ngx_parse_url(s->connection->pool, &url) != NGX_OK) {
        if (url.err) {
            ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                          "%s in upstream \"%V\"", url.err, &url.url);
        }

        return NGX_ERROR;
    }

    u = s->upstream;

    u->resolved = ngx_pcalloc(s->connection->pool,
                              sizeof(ngx_stream_upstream_resolved_t));
    if (u->resolved == ((void*)0)) {
        return NGX_ERROR;
    }

    if (url.addrs) {
        u->resolved->sockaddr = url.addrs[0].sockaddr;
        u->resolved->socklen = url.addrs[0].socklen;
        u->resolved->name = url.addrs[0].name;
        u->resolved->naddrs = 1;
    }

    u->resolved->host = url.host;
    u->resolved->port = url.port;
    u->resolved->no_port = url.no_port;

    return NGX_OK;
}
