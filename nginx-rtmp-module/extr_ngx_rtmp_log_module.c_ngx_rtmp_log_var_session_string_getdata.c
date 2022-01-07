
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int len; int data; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_rtmp_session_t ;
struct TYPE_5__ {int offset; } ;
typedef TYPE_2__ ngx_rtmp_log_op_t ;


 int * ngx_cpymem (int *,int ,int ) ;

__attribute__((used)) static u_char *
ngx_rtmp_log_var_session_string_getdata(ngx_rtmp_session_t *s, u_char *buf,
    ngx_rtmp_log_op_t *op)
{
    ngx_str_t *str;

    str = (ngx_str_t *) ((u_char *) s + op->offset);

    return ngx_cpymem(buf, str->data, str->len);
}
