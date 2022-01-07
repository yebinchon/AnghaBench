
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int len; int data; scalar_t__ not_found; } ;
typedef TYPE_1__ ngx_stream_variable_value_t ;
typedef int ngx_stream_session_t ;
struct TYPE_6__ {int data; } ;
typedef TYPE_2__ ngx_stream_log_op_t ;


 int * ngx_cpymem (int *,int ,int ) ;
 TYPE_1__* ngx_stream_get_indexed_variable (int *,int ) ;

__attribute__((used)) static u_char *
ngx_stream_log_unescaped_variable(ngx_stream_session_t *s, u_char *buf,
                                  ngx_stream_log_op_t *op)
{
    ngx_stream_variable_value_t *value;

    value = ngx_stream_get_indexed_variable(s, op->data);

    if (value == ((void*)0) || value->not_found) {
        return buf;
    }

    return ngx_cpymem(buf, value->data, value->len);
}
