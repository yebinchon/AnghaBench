
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int no_resolve; int no_port; int port; int host; TYPE_4__* addrs; int url; scalar_t__ err; } ;
typedef TYPE_5__ ngx_url_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_20__ {TYPE_9__* resolved; } ;
typedef TYPE_6__ ngx_http_upstream_t ;
typedef int ngx_http_upstream_resolved_t ;
struct TYPE_21__ {TYPE_2__* scgi_values; TYPE_1__* scgi_lengths; } ;
typedef TYPE_7__ ngx_http_scgi_loc_conf_t ;
struct TYPE_22__ {int pool; TYPE_6__* upstream; TYPE_3__* connection; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_23__ {int naddrs; int no_port; int port; int host; int name; int socklen; int sockaddr; } ;
struct TYPE_18__ {int name; int socklen; int sockaddr; } ;
struct TYPE_17__ {int log; } ;
struct TYPE_16__ {int elts; } ;
struct TYPE_15__ {int elts; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int * ngx_http_script_run (TYPE_8__*,int *,int ,int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__,int *) ;
 int ngx_memzero (TYPE_5__*,int) ;
 scalar_t__ ngx_parse_url (int ,TYPE_5__*) ;
 TYPE_9__* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_scgi_eval(ngx_http_request_t *r, ngx_http_scgi_loc_conf_t * scf)
{
    ngx_url_t url;
    ngx_http_upstream_t *u;

    ngx_memzero(&url, sizeof(ngx_url_t));

    if (ngx_http_script_run(r, &url.url, scf->scgi_lengths->elts, 0,
                            scf->scgi_values->elts)
        == ((void*)0))
    {
        return NGX_ERROR;
    }

    url.no_resolve = 1;

    if (ngx_parse_url(r->pool, &url) != NGX_OK) {
        if (url.err) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "%s in upstream \"%V\"", url.err, &url.url);
        }

        return NGX_ERROR;
    }

    u = r->upstream;

    u->resolved = ngx_pcalloc(r->pool, sizeof(ngx_http_upstream_resolved_t));
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
