
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_family; int ai_addrlen; int ai_addr; } ;
typedef int serv_buf ;
typedef int host_buf ;


 scalar_t__ AF_INET6 ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int gai_strerror (int) ;
 int get_backlog_size () ;
 int getnameinfo (int ,int ,char*,int,char*,int,int) ;
 scalar_t__ listen (int,int ) ;
 int lwan_status_critical (char*,int ) ;
 int lwan_status_critical_perror (char*) ;
 int lwan_status_info (char*,char*,char*) ;
 int set_socket_flags (int) ;

__attribute__((used)) static int listen_addrinfo(int fd, const struct addrinfo *addr)
{
    if (listen(fd, get_backlog_size()) < 0)
        lwan_status_critical_perror("listen");

    char host_buf[NI_MAXHOST], serv_buf[NI_MAXSERV];
    int ret = getnameinfo(addr->ai_addr, addr->ai_addrlen, host_buf,
                          sizeof(host_buf), serv_buf, sizeof(serv_buf),
                          NI_NUMERICHOST | NI_NUMERICSERV);
    if (ret)
        lwan_status_critical("getnameinfo: %s", gai_strerror(ret));

    if (addr->ai_family == AF_INET6)
        lwan_status_info("Listening on http://[%s]:%s", host_buf, serv_buf);
    else
        lwan_status_info("Listening on http://%s:%s", host_buf, serv_buf);

    return set_socket_flags(fd);
}
