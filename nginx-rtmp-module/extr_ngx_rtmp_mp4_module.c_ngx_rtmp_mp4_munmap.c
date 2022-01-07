
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_fd_t ;


 int munmap (void*,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_munmap(void *data, size_t size, ngx_fd_t *extra)
{
    return munmap(data, size);
}
