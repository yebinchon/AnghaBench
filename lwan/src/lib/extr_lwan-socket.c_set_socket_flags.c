
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_GETFL ;
 int F_SETFD ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,...) ;
 int lwan_status_critical_perror (char*) ;

__attribute__((used)) static int set_socket_flags(int fd)
{
    int flags = fcntl(fd, F_GETFD);
    if (flags < 0)
        lwan_status_critical_perror("Could not obtain socket flags");
    if (fcntl(fd, F_SETFD, flags | FD_CLOEXEC) < 0)
        lwan_status_critical_perror("Could not set socket flags");

    flags = fcntl(fd, F_GETFL);
    if (flags < 0)
        lwan_status_critical_perror("Could not obtain socket flags");
    if (fcntl(fd, F_SETFL, flags | O_NONBLOCK) < 0)
        lwan_status_critical_perror("Could not set socket flags");

    return fd;
}
