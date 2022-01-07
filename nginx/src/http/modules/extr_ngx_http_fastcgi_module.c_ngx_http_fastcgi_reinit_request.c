
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_8__ {scalar_t__ state; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {TYPE_1__* split_parts; scalar_t__ large_stderr; scalar_t__ fastcgi_stdout; int state; } ;
typedef TYPE_3__ ngx_http_fastcgi_ctx_t ;
struct TYPE_7__ {scalar_t__ nelts; } ;


 int NGX_OK ;
 int ngx_http_fastcgi_module ;
 int ngx_http_fastcgi_st_version ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_fastcgi_reinit_request(ngx_http_request_t *r)
{
    ngx_http_fastcgi_ctx_t *f;

    f = ngx_http_get_module_ctx(r, ngx_http_fastcgi_module);

    if (f == ((void*)0)) {
        return NGX_OK;
    }

    f->state = ngx_http_fastcgi_st_version;
    f->fastcgi_stdout = 0;
    f->large_stderr = 0;

    if (f->split_parts) {
        f->split_parts->nelts = 0;
    }

    r->state = 0;

    return NGX_OK;
}
