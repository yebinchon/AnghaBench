
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef size_t ssize_t ;
typedef int ngx_fd_t ;


 int CharToOemBuff (void*,void*,size_t) ;
 scalar_t__ WriteFile (int ,void*,size_t,int *,int *) ;

ssize_t
ngx_write_console(ngx_fd_t fd, void *buf, size_t size)
{
    u_long n;

    (void) CharToOemBuff(buf, buf, size);

    if (WriteFile(fd, buf, size, &n, ((void*)0)) != 0) {
        return (size_t) n;
    }

    return -1;
}
