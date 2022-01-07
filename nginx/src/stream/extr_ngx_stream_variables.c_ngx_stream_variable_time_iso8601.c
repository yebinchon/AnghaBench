
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_8__ {int valid; int * data; scalar_t__ not_found; scalar_t__ no_cacheable; int len; } ;
typedef TYPE_2__ ngx_stream_variable_value_t ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_stream_session_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int len; int data; } ;
struct TYPE_7__ {int pool; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_6__ ngx_cached_http_log_iso8601 ;
 int ngx_memcpy (int *,int ,int ) ;
 int * ngx_pnalloc (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_stream_variable_time_iso8601(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    u_char *p;

    p = ngx_pnalloc(s->connection->pool, ngx_cached_http_log_iso8601.len);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(p, ngx_cached_http_log_iso8601.data,
               ngx_cached_http_log_iso8601.len);

    v->len = ngx_cached_http_log_iso8601.len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = p;

    return NGX_OK;
}
