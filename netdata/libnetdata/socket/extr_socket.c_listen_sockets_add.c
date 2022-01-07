
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {size_t opened; int* fds; int* fds_types; int* fds_families; int* fds_acl_flags; int * fds_names; } ;
typedef TYPE_1__ LISTEN_SOCKETS ;


 size_t MAX_LISTEN_FDS ;
 int close (int) ;
 int error (char*,char const*,char const*,int ,char const*,int) ;
 int strdup_client_description (int,char const*,char const*,int ) ;

__attribute__((used)) static inline int listen_sockets_add(LISTEN_SOCKETS *sockets, int fd, int family, int socktype, const char *protocol, const char *ip, uint16_t port, int acl_flags) {
    if(sockets->opened >= MAX_LISTEN_FDS) {
        error("LISTENER: Too many listening sockets. Failed to add listening %s socket at ip '%s' port %d, protocol %s, socktype %d", protocol, ip, port, protocol, socktype);
        close(fd);
        return -1;
    }

    sockets->fds[sockets->opened] = fd;
    sockets->fds_types[sockets->opened] = socktype;
    sockets->fds_families[sockets->opened] = family;
    sockets->fds_names[sockets->opened] = strdup_client_description(family, protocol, ip, port);
    sockets->fds_acl_flags[sockets->opened] = acl_flags;

    sockets->opened++;
    return 0;
}
