
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_OK ;
 scalar_t__ StartServiceCtrlDispatcher (int ) ;
 int ngx_errno ;
 int ngx_log_error (int ,int *,int ,char*) ;
 int st ;

ngx_int_t
ngx_service(ngx_log_t *log)
{




    if (StartServiceCtrlDispatcher(st) == 0) {
        ngx_log_error(NGX_LOG_EMERG, log, ngx_errno,
                      "StartServiceCtrlDispatcher() failed");
        return NGX_ERROR;
    }

    return NGX_OK;
}
