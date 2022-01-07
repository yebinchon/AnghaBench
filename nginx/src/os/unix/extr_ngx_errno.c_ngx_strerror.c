
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_4__ {int data; int len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef size_t ngx_err_t ;


 scalar_t__ NGX_SYS_NERR ;
 int * ngx_cpymem (int *,int ,size_t) ;
 size_t ngx_min (size_t,int ) ;
 TYPE_1__* ngx_sys_errlist ;
 TYPE_1__ ngx_unknown_error ;

u_char *
ngx_strerror(ngx_err_t err, u_char *errstr, size_t size)
{
    ngx_str_t *msg;

    msg = ((ngx_uint_t) err < NGX_SYS_NERR) ? &ngx_sys_errlist[err]:
                                              &ngx_unknown_error;
    size = ngx_min(size, msg->len);

    return ngx_cpymem(errstr, msg->data, size);
}
