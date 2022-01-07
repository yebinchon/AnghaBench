
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct timeval {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int sin6_flowinfo; int sin6_family; } ;
struct sockaddr_in {int sin_family; } ;
struct addrinfo {int ai_family; int ai_socktype; int ai_protocol; scalar_t__ ai_addrlen; TYPE_1__* ai_addr; scalar_t__ ai_flags; struct addrinfo* ai_next; } ;
typedef int servBfr ;
typedef int hostBfr ;
typedef int hints ;
typedef int fd_set ;
struct TYPE_3__ {int sa_family; } ;


 int AF_INET ;
 int AF_INET6 ;
 int D_CONNECT_TO ;
 scalar_t__ EALREADY ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;


 int PF_UNSPEC ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_SNDTIMEO ;
 int close (int) ;
 scalar_t__ connect (int,TYPE_1__*,scalar_t__) ;
 int debug (int ,char*,...) ;
 scalar_t__ errno ;
 int error (char*,char const*,char const*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (TYPE_1__*,scalar_t__,char*,int,char*,int,int) ;
 int info (char*,char*,char*) ;
 int memset (struct addrinfo*,int ,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;
 int socket (int,int,int) ;

__attribute__((used)) static inline int connect_to_this_ip46(int protocol, int socktype, const char *host, uint32_t scope_id, const char *service, struct timeval *timeout) {
    struct addrinfo hints;
    struct addrinfo *ai_head = ((void*)0), *ai = ((void*)0);

    memset(&hints, 0, sizeof(hints));
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = socktype;
    hints.ai_protocol = protocol;

    int ai_err = getaddrinfo(host, service, &hints, &ai_head);
    if (ai_err != 0) {
        error("Cannot resolve host '%s', port '%s': %s", host, service, gai_strerror(ai_err));
        return -1;
    }

    int fd = -1;
    for (ai = ai_head; ai != ((void*)0) && fd == -1; ai = ai->ai_next) {

        if (ai->ai_family == 128) {
            struct sockaddr_in6 *pSadrIn6 = (struct sockaddr_in6 *) ai->ai_addr;
            if(pSadrIn6->sin6_scope_id == 0) {
                pSadrIn6->sin6_scope_id = scope_id;
            }
        }

        char hostBfr[NI_MAXHOST + 1];
        char servBfr[NI_MAXSERV + 1];

        getnameinfo(ai->ai_addr,
                    ai->ai_addrlen,
                    hostBfr,
                    sizeof(hostBfr),
                    servBfr,
                    sizeof(servBfr),
                    NI_NUMERICHOST | NI_NUMERICSERV);

        debug(D_CONNECT_TO, "Address info: host = '%s', service = '%s', ai_flags = 0x%02X, ai_family = %d (PF_INET = %d, PF_INET6 = %d), ai_socktype = %d (SOCK_STREAM = %d, SOCK_DGRAM = %d), ai_protocol = %d (IPPROTO_TCP = %d, IPPROTO_UDP = %d), ai_addrlen = %lu (sockaddr_in = %lu, sockaddr_in6 = %lu)",
              hostBfr,
              servBfr,
              (unsigned int)ai->ai_flags,
              ai->ai_family,
              129,
              128,
              ai->ai_socktype,
              SOCK_STREAM,
              SOCK_DGRAM,
              ai->ai_protocol,
              IPPROTO_TCP,
              IPPROTO_UDP,
              (unsigned long)ai->ai_addrlen,
              (unsigned long)sizeof(struct sockaddr_in),
              (unsigned long)sizeof(struct sockaddr_in6));

        switch (ai->ai_addr->sa_family) {
            case 129: {
                struct sockaddr_in *pSadrIn = (struct sockaddr_in *)ai->ai_addr;
                (void)pSadrIn;

                debug(D_CONNECT_TO, "ai_addr = sin_family: %d (AF_INET = %d, AF_INET6 = %d), sin_addr: '%s', sin_port: '%s'",
                      pSadrIn->sin_family,
                      AF_INET,
                      AF_INET6,
                      hostBfr,
                      servBfr);
                break;
            }

            case 128: {
                struct sockaddr_in6 *pSadrIn6 = (struct sockaddr_in6 *) ai->ai_addr;
                (void)pSadrIn6;

                debug(D_CONNECT_TO,"ai_addr = sin6_family: %d (AF_INET = %d, AF_INET6 = %d), sin6_addr: '%s', sin6_port: '%s', sin6_flowinfo: %u, sin6_scope_id: %u",
                      pSadrIn6->sin6_family,
                      AF_INET,
                      AF_INET6,
                      hostBfr,
                      servBfr,
                      pSadrIn6->sin6_flowinfo,
                      pSadrIn6->sin6_scope_id);
                break;
            }

            default: {
                debug(D_CONNECT_TO, "Unknown protocol family %d.", ai->ai_family);
                continue;
            }
        }

        fd = socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
        if(fd != -1) {
            if(timeout) {
                if(setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, (char *) timeout, sizeof(struct timeval)) < 0)
                    error("Failed to set timeout on the socket to ip '%s' port '%s'", hostBfr, servBfr);
            }

            errno = 0;
            if(connect(fd, ai->ai_addr, ai->ai_addrlen) < 0) {
                if(errno == EALREADY || errno == EINPROGRESS) {
                    info("Waiting for connection to ip %s port %s to be established", hostBfr, servBfr);

                    fd_set fds;
                    FD_ZERO(&fds);
                    FD_SET(0, &fds);
                    int rc = select (1, ((void*)0), &fds, ((void*)0), timeout);

                    if(rc > 0 && FD_ISSET(fd, &fds)) {
                        info("connect() to ip %s port %s completed successfully", hostBfr, servBfr);
                    }
                    else if(rc == -1) {
                        error("Failed to connect to '%s', port '%s'. select() returned %d", hostBfr, servBfr, rc);
                        close(fd);
                        fd = -1;
                    }
                    else {
                        error("Timed out while connecting to '%s', port '%s'. select() returned %d", hostBfr, servBfr, rc);
                        close(fd);
                        fd = -1;
                    }
                }
                else {
                    error("Failed to connect to '%s', port '%s'", hostBfr, servBfr);
                    close(fd);
                    fd = -1;
                }
            }

            if(fd != -1)
                debug(D_CONNECT_TO, "Connected to '%s' on port '%s'.", hostBfr, servBfr);
        }
    }

    freeaddrinfo(ai_head);

    return fd;
}
