
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;


 int NGX_LOG_NOTICE ;
 int ngx_linux_kern_osrelease ;
 int ngx_linux_kern_ostype ;
 int ngx_log_error (int ,int *,int ,char*,int ,int ) ;

void
ngx_os_specific_status(ngx_log_t *log)
{
    ngx_log_error(NGX_LOG_NOTICE, log, 0, "OS: %s %s",
                  ngx_linux_kern_ostype, ngx_linux_kern_osrelease);
}
