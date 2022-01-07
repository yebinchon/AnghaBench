
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_10__ {int valid; int not_found; int len; int * data; scalar_t__ no_cacheable; } ;
typedef TYPE_3__ ngx_stream_variable_value_t ;
struct TYPE_11__ {int bytes_sent; int bytes_received; } ;
typedef TYPE_4__ ngx_stream_upstream_state_t ;
struct TYPE_12__ {TYPE_2__* upstream_states; TYPE_1__* connection; } ;
typedef TYPE_5__ ngx_stream_session_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int nelts; TYPE_4__* elts; } ;
struct TYPE_8__ {int pool; } ;


 int NGX_ERROR ;
 int NGX_OFF_T_LEN ;
 int NGX_OK ;
 int * ngx_pnalloc (int ,size_t) ;
 int * ngx_sprintf (int *,char*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_stream_upstream_bytes_variable(ngx_stream_session_t *s,
    ngx_stream_variable_value_t *v, uintptr_t data)
{
    u_char *p;
    size_t len;
    ngx_uint_t i;
    ngx_stream_upstream_state_t *state;

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    if (s->upstream_states == ((void*)0) || s->upstream_states->nelts == 0) {
        v->not_found = 1;
        return NGX_OK;
    }

    len = s->upstream_states->nelts * (NGX_OFF_T_LEN + 2);

    p = ngx_pnalloc(s->connection->pool, len);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    v->data = p;

    i = 0;
    state = s->upstream_states->elts;

    for ( ;; ) {

        if (data == 1) {
            p = ngx_sprintf(p, "%O", state[i].bytes_received);

        } else {
            p = ngx_sprintf(p, "%O", state[i].bytes_sent);
        }

        if (++i == s->upstream_states->nelts) {
            break;
        }

        *p++ = ',';
        *p++ = ' ';
    }

    v->len = p - v->data;

    return NGX_OK;
}
