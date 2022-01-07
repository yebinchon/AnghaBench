
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_8__ {int * end; int * start; scalar_t__ count; scalar_t__ code; } ;
typedef TYPE_2__ ngx_http_status_t ;
struct TYPE_9__ {scalar_t__ state; TYPE_1__* upstream; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_7__ {int process_header; } ;


 int NGX_OK ;
 TYPE_2__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_uwsgi_module ;
 int ngx_http_uwsgi_process_status_line ;

__attribute__((used)) static ngx_int_t
ngx_http_uwsgi_reinit_request(ngx_http_request_t *r)
{
    ngx_http_status_t *status;

    status = ngx_http_get_module_ctx(r, ngx_http_uwsgi_module);

    if (status == ((void*)0)) {
        return NGX_OK;
    }

    status->code = 0;
    status->count = 0;
    status->start = ((void*)0);
    status->end = ((void*)0);

    r->upstream->process_header = ngx_http_uwsgi_process_status_line;
    r->state = 0;

    return NGX_OK;
}
