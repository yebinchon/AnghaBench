
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_4__ {size_t len; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
typedef TYPE_2__ ngx_rtmp_log_op_t ;



__attribute__((used)) static size_t
ngx_rtmp_log_var_default_getlen(ngx_rtmp_session_t *s, ngx_rtmp_log_op_t *op)
{
    return op->value.len;
}
