
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_char ;
typedef int time_t ;
typedef int ngx_int_t ;
typedef int ngx_fd_t ;
struct TYPE_3__ {void* dwHighDateTime; void* dwLowDateTime; } ;
typedef TYPE_1__ FILETIME ;
typedef void* DWORD ;


 int NGX_ERROR ;
 int NGX_OK ;
 scalar_t__ SetFileTime (int ,int *,int *,TYPE_1__*) ;

ngx_int_t
ngx_set_file_time(u_char *name, ngx_fd_t fd, time_t s)
{
    uint64_t intervals;
    FILETIME ft;



    intervals = s * 10000000 + 116444736000000000;

    ft.dwLowDateTime = (DWORD) intervals;
    ft.dwHighDateTime = (DWORD) (intervals >> 32);

    if (SetFileTime(fd, ((void*)0), ((void*)0), &ft) != 0) {
        return NGX_OK;
    }

    return NGX_ERROR;
}
