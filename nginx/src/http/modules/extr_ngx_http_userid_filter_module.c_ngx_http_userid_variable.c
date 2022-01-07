
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int len; int valid; int * data; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_10__ {int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_pnalloc (int ,int) ;
 int ngx_sprintf (int *,char*,TYPE_1__*,int ,int ,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_userid_variable(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    ngx_str_t *name, uint32_t *uid)
{
    v->len = name->len + sizeof("=00001111222233334444555566667777") - 1;
    v->data = ngx_pnalloc(r->pool, v->len);
    if (v->data == ((void*)0)) {
        return NGX_ERROR;
    }

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    ngx_sprintf(v->data, "%V=%08XD%08XD%08XD%08XD",
                name, uid[0], uid[1], uid[2], uid[3]);

    return NGX_OK;
}
