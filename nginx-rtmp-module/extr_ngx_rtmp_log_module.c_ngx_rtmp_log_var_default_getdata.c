
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_rtmp_session_t ;
struct TYPE_4__ {int len; int data; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
typedef TYPE_2__ ngx_rtmp_log_op_t ;


 int * ngx_cpymem (int *,int ,int ) ;

__attribute__((used)) static u_char *
ngx_rtmp_log_var_default_getdata(ngx_rtmp_session_t *s, u_char *buf,
    ngx_rtmp_log_op_t *op)
{
    return ngx_cpymem(buf, op->value.data, op->value.len);
}
