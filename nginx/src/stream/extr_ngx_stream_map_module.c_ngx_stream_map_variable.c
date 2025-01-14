
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int valid; char* data; int len; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef TYPE_2__ ngx_stream_variable_value_t ;
struct TYPE_17__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_stream_session_t ;
struct TYPE_18__ {TYPE_2__* default_value; int map; scalar_t__ hostnames; int value; } ;
typedef TYPE_4__ ngx_stream_map_ctx_t ;
typedef int ngx_stream_complex_value_t ;
struct TYPE_19__ {int len; char* data; } ;
typedef TYPE_5__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_15__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_STREAM ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_5__*,TYPE_2__*) ;
 scalar_t__ ngx_stream_complex_value (TYPE_3__*,int *,TYPE_5__*) ;
 TYPE_2__* ngx_stream_map_find (TYPE_3__*,int *,TYPE_5__*) ;

__attribute__((used)) static ngx_int_t
ngx_stream_map_variable(ngx_stream_session_t *s, ngx_stream_variable_value_t *v,
    uintptr_t data)
{
    ngx_stream_map_ctx_t *map = (ngx_stream_map_ctx_t *) data;

    ngx_str_t val, str;
    ngx_stream_complex_value_t *cv;
    ngx_stream_variable_value_t *value;

    ngx_log_debug0(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "stream map started");

    if (ngx_stream_complex_value(s, &map->value, &val) != NGX_OK) {
        return NGX_ERROR;
    }

    if (map->hostnames && val.len > 0 && val.data[val.len - 1] == '.') {
        val.len--;
    }

    value = ngx_stream_map_find(s, &map->map, &val);

    if (value == ((void*)0)) {
        value = map->default_value;
    }

    if (!value->valid) {
        cv = (ngx_stream_complex_value_t *) value->data;

        if (ngx_stream_complex_value(s, cv, &str) != NGX_OK) {
            return NGX_ERROR;
        }

        v->valid = 1;
        v->no_cacheable = 0;
        v->not_found = 0;
        v->len = str.len;
        v->data = str.data;

    } else {
        *v = *value;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "stream map: \"%V\" \"%v\"", &val, v);

    return NGX_OK;
}
