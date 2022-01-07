
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ (* ngx_http_script_len_code_pt ) (TYPE_6__*) ;
struct TYPE_14__ {size_t len; int * data; } ;
struct TYPE_16__ {TYPE_5__* sp; TYPE_4__ buf; int * pos; int status; scalar_t__ ip; TYPE_3__* request; int quote; int line; } ;
typedef TYPE_6__ ngx_http_script_engine_t ;
struct TYPE_17__ {TYPE_2__* lengths; } ;
typedef TYPE_8__ ngx_http_script_complex_value_code_t ;
struct TYPE_15__ {size_t len; int * data; } ;
struct TYPE_13__ {int pool; TYPE_1__* connection; } ;
struct TYPE_12__ {scalar_t__ elts; } ;
struct TYPE_11__ {int log; } ;


 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ ngx_http_script_exit ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_memzero (TYPE_6__*,int) ;
 int * ngx_pnalloc (int ,size_t) ;

void
ngx_http_script_complex_value_code(ngx_http_script_engine_t *e)
{
    size_t len;
    ngx_http_script_engine_t le;
    ngx_http_script_len_code_pt lcode;
    ngx_http_script_complex_value_code_t *code;

    code = (ngx_http_script_complex_value_code_t *) e->ip;

    e->ip += sizeof(ngx_http_script_complex_value_code_t);

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                   "http script complex value");

    ngx_memzero(&le, sizeof(ngx_http_script_engine_t));

    le.ip = code->lengths->elts;
    le.line = e->line;
    le.request = e->request;
    le.quote = e->quote;

    for (len = 0; *(uintptr_t *) le.ip; len += lcode(&le)) {
        lcode = *(ngx_http_script_len_code_pt *) le.ip;
    }

    e->buf.len = len;
    e->buf.data = ngx_pnalloc(e->request->pool, len);
    if (e->buf.data == ((void*)0)) {
        e->ip = ngx_http_script_exit;
        e->status = NGX_HTTP_INTERNAL_SERVER_ERROR;
        return;
    }

    e->pos = e->buf.data;

    e->sp->len = e->buf.len;
    e->sp->data = e->buf.data;
    e->sp++;
}
