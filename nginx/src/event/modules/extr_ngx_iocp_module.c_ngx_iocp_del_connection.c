
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_3__ {int log; scalar_t__ fd; } ;
typedef TYPE_1__ ngx_connection_t ;
typedef int HANDLE ;


 scalar_t__ CancelIo (int ) ;
 int NGX_CLOSE_EVENT ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_iocp_del_connection(ngx_connection_t *c, ngx_uint_t flags)
{
    return NGX_OK;
}
