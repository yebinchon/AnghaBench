
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_fd_t ;


 int NGX_FILE_ERROR ;

ngx_int_t
ngx_directio_off(ngx_fd_t fd)
{
    return ~NGX_FILE_ERROR;
}
