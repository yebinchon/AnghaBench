
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int ngx_fd_t ;


 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 void* mmap (int *,size_t,int ,int ,int ,int ) ;

__attribute__((used)) static void *
ngx_rtmp_mp4_mmap(ngx_fd_t fd, size_t size, off_t offset, ngx_fd_t *extra)
{
    void *data;

    data = mmap(((void*)0), size, PROT_READ, MAP_SHARED, fd, offset);



    return data == MAP_FAILED ? ((void*)0) : data;
}
