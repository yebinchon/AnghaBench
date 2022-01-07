
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNSPEC ;
 int SD_LISTEN_FDS_START ;
 int SOCK_STREAM ;
 int lwan_status_critical (char*) ;
 int sd_is_socket_inet (int,int ,int ,int,int ) ;
 int set_socket_flags (int) ;

__attribute__((used)) static int setup_socket_from_systemd(void)
{
    int fd = SD_LISTEN_FDS_START;

    if (!sd_is_socket_inet(fd, AF_UNSPEC, SOCK_STREAM, 1, 0))
        lwan_status_critical("Passed file descriptor is not a "
                             "listening TCP socket");

    return set_socket_flags(fd);
}
