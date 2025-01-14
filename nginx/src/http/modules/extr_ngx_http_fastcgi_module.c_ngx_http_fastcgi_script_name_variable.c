
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


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_16__ {int len; int valid; char* data; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_17__ {int pool; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_15__ {int len; int data; } ;
struct TYPE_18__ {TYPE_2__ index; } ;
typedef TYPE_5__ ngx_http_fastcgi_loc_conf_t ;
struct TYPE_14__ {int len; char* data; } ;
struct TYPE_19__ {TYPE_1__ script_name; } ;
typedef TYPE_6__ ngx_http_fastcgi_ctx_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_copy (char*,char*,int) ;
 int ngx_http_fastcgi_module ;
 TYPE_6__* ngx_http_fastcgi_split (TYPE_4__*,TYPE_5__*) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 int ngx_memcpy (int *,int ,int) ;
 char* ngx_pnalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_fastcgi_script_name_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    u_char *p;
    ngx_http_fastcgi_ctx_t *f;
    ngx_http_fastcgi_loc_conf_t *flcf;

    flcf = ngx_http_get_module_loc_conf(r, ngx_http_fastcgi_module);

    f = ngx_http_fastcgi_split(r, flcf);

    if (f == ((void*)0)) {
        return NGX_ERROR;
    }

    if (f->script_name.len == 0
        || f->script_name.data[f->script_name.len - 1] != '/')
    {
        v->len = f->script_name.len;
        v->valid = 1;
        v->no_cacheable = 0;
        v->not_found = 0;
        v->data = f->script_name.data;

        return NGX_OK;
    }

    v->len = f->script_name.len + flcf->index.len;

    v->data = ngx_pnalloc(r->pool, v->len);
    if (v->data == ((void*)0)) {
        return NGX_ERROR;
    }

    p = ngx_copy(v->data, f->script_name.data, f->script_name.len);
    ngx_memcpy(p, flcf->index.data, flcf->index.len);

    return NGX_OK;
}
