
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_log_op_t ;
struct TYPE_5__ {int len; int data; } ;
struct TYPE_6__ {TYPE_1__ addr_text; } ;


 int * ngx_cpymem (int *,int ,int ) ;

__attribute__((used)) static u_char *
ngx_rtmp_log_var_remote_addr_getdata(ngx_rtmp_session_t *s, u_char *buf,
    ngx_rtmp_log_op_t *op)
{
    return ngx_cpymem(buf, s->connection->addr_text.data,
                           s->connection->addr_text.len);
}
