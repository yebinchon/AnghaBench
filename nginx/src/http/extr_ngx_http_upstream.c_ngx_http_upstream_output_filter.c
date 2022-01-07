
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_6__ {int aio; TYPE_1__* upstream; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_7__ {int aio; } ;
typedef TYPE_3__ ngx_event_pipe_t ;
typedef int ngx_chain_t ;
struct TYPE_5__ {TYPE_3__* pipe; } ;


 int ngx_http_output_filter (TYPE_2__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_output_filter(void *data, ngx_chain_t *chain)
{
    ngx_int_t rc;
    ngx_event_pipe_t *p;
    ngx_http_request_t *r;

    r = data;
    p = r->upstream->pipe;

    rc = ngx_http_output_filter(r, chain);

    p->aio = r->aio;

    return rc;
}
