
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* uint16_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int name ;


 int AF_INET ;
 int D_LISTENER ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int debug (int ,char*,char const*,char*,int) ;
 int error (char*,char const*,...) ;
 int htons (char*) ;
 int inet_pton (int ,char const*,void*) ;
 scalar_t__ listen (int,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int sock_enlarge_in (int) ;
 int sock_setnonblock (int) ;
 int sock_setreuse (int,int) ;
 int sock_setreuse_port (int,int) ;
 int socket (int ,int,int ) ;

int create_listen_socket4(int socktype, const char *ip, uint16_t port, int listen_backlog) {
    int sock;

    debug(D_LISTENER, "LISTENER: IPv4 creating new listening socket on ip '%s' port %d, socktype %d", ip, port, socktype);

    sock = socket(AF_INET, socktype, 0);
    if(sock < 0) {
        error("LISTENER: IPv4 socket() on ip '%s' port %d, socktype %d failed.", ip, port, socktype);
        return -1;
    }

    sock_setreuse(sock, 1);
    sock_setreuse_port(sock, 1);
    sock_setnonblock(sock);
    sock_enlarge_in(sock);

    struct sockaddr_in name;
    memset(&name, 0, sizeof(struct sockaddr_in));
    name.sin_family = AF_INET;
    name.sin_port = htons (port);

    int ret = inet_pton(AF_INET, ip, (void *)&name.sin_addr.s_addr);
    if(ret != 1) {
        error("LISTENER: Failed to convert IP '%s' to a valid IPv4 address.", ip);
        close(sock);
        return -1;
    }

    if(bind (sock, (struct sockaddr *) &name, sizeof (name)) < 0) {
        close(sock);
        error("LISTENER: IPv4 bind() on ip '%s' port %d, socktype %d failed.", ip, port, socktype);
        return -1;
    }

    if(socktype == SOCK_STREAM && listen(sock, listen_backlog) < 0) {
        close(sock);
        error("LISTENER: IPv4 listen() on ip '%s' port %d, socktype %d failed.", ip, port, socktype);
        return -1;
    }

    debug(D_LISTENER, "LISTENER: Listening on IPv4 ip '%s' port %d, socktype %d", ip, port, socktype);
    return sock;
}
