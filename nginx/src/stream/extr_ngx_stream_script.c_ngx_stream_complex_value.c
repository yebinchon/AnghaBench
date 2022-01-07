
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_stream_session_t ;
typedef scalar_t__ (* ngx_stream_script_len_code_pt ) (TYPE_3__*) ;
struct TYPE_18__ {size_t len; int * data; } ;
struct TYPE_16__ {int flushed; TYPE_7__ buf; int * ip; int * pos; TYPE_2__* session; } ;
typedef TYPE_3__ ngx_stream_script_engine_t ;
typedef int (* ngx_stream_script_code_pt ) (TYPE_3__*) ;
struct TYPE_17__ {int * values; int * lengths; TYPE_7__ value; } ;
typedef TYPE_6__ ngx_stream_complex_value_t ;
typedef TYPE_7__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_14__ {int pool; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_memzero (TYPE_3__*,int) ;
 int * ngx_pnalloc (int ,size_t) ;
 int ngx_stream_script_flush_complex_value (TYPE_2__*,TYPE_6__*) ;

ngx_int_t
ngx_stream_complex_value(ngx_stream_session_t *s,
    ngx_stream_complex_value_t *val, ngx_str_t *value)
{
    size_t len;
    ngx_stream_script_code_pt code;
    ngx_stream_script_engine_t e;
    ngx_stream_script_len_code_pt lcode;

    if (val->lengths == ((void*)0)) {
        *value = val->value;
        return NGX_OK;
    }

    ngx_stream_script_flush_complex_value(s, val);

    ngx_memzero(&e, sizeof(ngx_stream_script_engine_t));

    e.ip = val->lengths;
    e.session = s;
    e.flushed = 1;

    len = 0;

    while (*(uintptr_t *) e.ip) {
        lcode = *(ngx_stream_script_len_code_pt *) e.ip;
        len += lcode(&e);
    }

    value->len = len;
    value->data = ngx_pnalloc(s->connection->pool, len);
    if (value->data == ((void*)0)) {
        return NGX_ERROR;
    }

    e.ip = val->values;
    e.pos = value->data;
    e.buf = *value;

    while (*(uintptr_t *) e.ip) {
        code = *(ngx_stream_script_code_pt *) e.ip;
        code((ngx_stream_script_engine_t *) &e);
    }

    *value = e.buf;

    return NGX_OK;
}
