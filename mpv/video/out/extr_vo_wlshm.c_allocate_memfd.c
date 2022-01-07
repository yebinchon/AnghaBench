
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_ADD_SEALS ;
 int F_SEAL_SEAL ;
 int F_SEAL_SHRINK ;
 int MFD_ALLOW_SEALING ;
 int MFD_CLOEXEC ;
 int close (int) ;
 int fcntl (int,int ,int) ;
 int memfd_create (char*,int) ;
 scalar_t__ posix_fallocate (int,int ,size_t) ;

__attribute__((used)) static int allocate_memfd(size_t size)
{
    int fd = memfd_create("mpv", MFD_CLOEXEC | MFD_ALLOW_SEALING);
    if (fd < 0)
        return -1;

    fcntl(fd, F_ADD_SEALS, F_SEAL_SHRINK | F_SEAL_SEAL);

    if (posix_fallocate(fd, 0, size) == 0)
        return fd;

    close(fd);
    return -1;
}
