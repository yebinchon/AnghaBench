
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_16__ {size_t len; int * data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef scalar_t__ (* ngx_http_script_len_code_pt ) (TYPE_4__*) ;
struct TYPE_17__ {int flushed; int * pos; void* ip; TYPE_7__* request; } ;
typedef TYPE_4__ ngx_http_script_engine_t ;
typedef int (* ngx_http_script_code_pt ) (TYPE_4__*) ;
struct TYPE_18__ {int pool; TYPE_2__* variables; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_14__ {size_t nelts; } ;
struct TYPE_19__ {TYPE_1__ variables; } ;
typedef TYPE_8__ ngx_http_core_main_conf_t ;
struct TYPE_15__ {scalar_t__ not_found; scalar_t__ valid; scalar_t__ no_cacheable; } ;


 int ngx_http_core_module ;
 TYPE_8__* ngx_http_get_module_main_conf (TYPE_7__*,int ) ;
 int ngx_memzero (TYPE_4__*,int) ;
 int * ngx_pnalloc (int ,size_t) ;

u_char *
ngx_http_script_run(ngx_http_request_t *r, ngx_str_t *value,
    void *code_lengths, size_t len, void *code_values)
{
    ngx_uint_t i;
    ngx_http_script_code_pt code;
    ngx_http_script_len_code_pt lcode;
    ngx_http_script_engine_t e;
    ngx_http_core_main_conf_t *cmcf;

    cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);

    for (i = 0; i < cmcf->variables.nelts; i++) {
        if (r->variables[i].no_cacheable) {
            r->variables[i].valid = 0;
            r->variables[i].not_found = 0;
        }
    }

    ngx_memzero(&e, sizeof(ngx_http_script_engine_t));

    e.ip = code_lengths;
    e.request = r;
    e.flushed = 1;

    while (*(uintptr_t *) e.ip) {
        lcode = *(ngx_http_script_len_code_pt *) e.ip;
        len += lcode(&e);
    }


    value->len = len;
    value->data = ngx_pnalloc(r->pool, len);
    if (value->data == ((void*)0)) {
        return ((void*)0);
    }

    e.ip = code_values;
    e.pos = value->data;

    while (*(uintptr_t *) e.ip) {
        code = *(ngx_http_script_code_pt *) e.ip;
        code((ngx_http_script_engine_t *) &e);
    }

    return e.pos;
}
