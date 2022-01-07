
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_rtmp_session_t ;
struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ ngx_rtmp_log_op_t ;


 int * ngx_sprintf (int *,char*,int ) ;

__attribute__((used)) static u_char *
ngx_rtmp_log_var_session_uint32_getdata(ngx_rtmp_session_t *s, u_char *buf,
    ngx_rtmp_log_op_t *op)
{
    uint32_t *v;

    v = (uint32_t *) ((uint8_t *) s + op->offset);

    return ngx_sprintf(buf, "%uD", *v);
}
