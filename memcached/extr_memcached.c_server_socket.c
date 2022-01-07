
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int dummy; } ;
struct linger {int member_1; int member_0; } ;
struct addrinfo {scalar_t__ ai_family; TYPE_5__* ai_addr; int ai_addrlen; struct addrinfo* ai_next; int ai_socktype; int ai_flags; } ;
typedef int socklen_t ;
typedef int port_buf ;
typedef int my_sockaddr ;
typedef int ling ;
typedef int flags ;
typedef enum network_transport { ____Placeholder_network_transport } network_transport ;
struct TYPE_6__ {int ssl_enabled; struct TYPE_6__* next; } ;
typedef TYPE_1__ conn ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
struct TYPE_7__ {int num_threads_per_udp; int backlog; } ;
typedef int FILE ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int AI_PASSIVE ;
 scalar_t__ EADDRINUSE ;
 int EAI_SYSTEM ;
 scalar_t__ EMFILE ;
 int EV_PERSIST ;
 int EV_READ ;
 int EXIT_FAILURE ;
 int EX_OSERR ;
 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_V6ONLY ;
 scalar_t__ IS_UDP (int) ;
 int NI_MAXSERV ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_LINGER ;
 int SO_REUSEADDR ;
 int TCP_NODELAY ;
 int UDP_READ_BUFFER_SIZE ;
 int assert (int) ;
 int bind (int,TYPE_5__*,int ) ;
 int close (int) ;
 int conn_listening ;
 TYPE_1__* conn_new (int,int ,int,int,int,int ,int *) ;
 int conn_read ;
 int dispatch_conn_new (int,int ,int,int ,int,int *) ;
 int dup (int) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int listen (int,int ) ;
 TYPE_1__* listen_conn ;
 int main_base ;
 int maximize_sndbuf (int) ;
 int new_socket (struct addrinfo*) ;
 int ntohs (int ) ;
 int perror (char*) ;
 int setsockopt (int,int ,int ,void*,int) ;
 TYPE_2__ settings ;
 int snprintf (char*,int,char*,int) ;
 int stderr ;

__attribute__((used)) static int server_socket(const char *interface,
                         int port,
                         enum network_transport transport,
                         FILE *portnumber_file, bool ssl_enabled) {
    int sfd;
    struct linger ling = {0, 0};
    struct addrinfo *ai;
    struct addrinfo *next;
    struct addrinfo hints = { .ai_flags = AI_PASSIVE,
                              .ai_family = AF_UNSPEC };
    char port_buf[NI_MAXSERV];
    int error;
    int success = 0;
    int flags =1;

    hints.ai_socktype = IS_UDP(transport) ? SOCK_DGRAM : SOCK_STREAM;

    if (port == -1) {
        port = 0;
    }
    snprintf(port_buf, sizeof(port_buf), "%d", port);
    error= getaddrinfo(interface, port_buf, &hints, &ai);
    if (error != 0) {
        if (error != EAI_SYSTEM)
          fprintf(stderr, "getaddrinfo(): %s\n", gai_strerror(error));
        else
          perror("getaddrinfo()");
        return 1;
    }

    for (next= ai; next; next= next->ai_next) {
        conn *listen_conn_add;
        if ((sfd = new_socket(next)) == -1) {



            if (errno == EMFILE) {

                perror("server_socket");
                exit(EX_OSERR);
            }
            continue;
        }
        setsockopt(sfd, SOL_SOCKET, SO_REUSEADDR, (void *)&flags, sizeof(flags));
        if (IS_UDP(transport)) {
            maximize_sndbuf(sfd);
        } else {
            error = setsockopt(sfd, SOL_SOCKET, SO_KEEPALIVE, (void *)&flags, sizeof(flags));
            if (error != 0)
                perror("setsockopt");

            error = setsockopt(sfd, SOL_SOCKET, SO_LINGER, (void *)&ling, sizeof(ling));
            if (error != 0)
                perror("setsockopt");

            error = setsockopt(sfd, IPPROTO_TCP, TCP_NODELAY, (void *)&flags, sizeof(flags));
            if (error != 0)
                perror("setsockopt");
        }

        if (bind(sfd, next->ai_addr, next->ai_addrlen) == -1) {
            if (errno != EADDRINUSE) {
                perror("bind()");
                close(sfd);
                freeaddrinfo(ai);
                return 1;
            }
            close(sfd);
            continue;
        } else {
            success++;
            if (!IS_UDP(transport) && listen(sfd, settings.backlog) == -1) {
                perror("listen()");
                close(sfd);
                freeaddrinfo(ai);
                return 1;
            }
            if (portnumber_file != ((void*)0) &&
                (next->ai_addr->sa_family == AF_INET ||
                 next->ai_addr->sa_family == AF_INET6)) {
                union {
                    struct sockaddr_in in;
                    struct sockaddr_in6 in6;
                } my_sockaddr;
                socklen_t len = sizeof(my_sockaddr);
                if (getsockname(sfd, (struct sockaddr*)&my_sockaddr, &len)==0) {
                    if (next->ai_addr->sa_family == AF_INET) {
                        fprintf(portnumber_file, "%s INET: %u\n",
                                IS_UDP(transport) ? "UDP" : "TCP",
                                ntohs(my_sockaddr.in.sin_port));
                    } else {
                        fprintf(portnumber_file, "%s INET6: %u\n",
                                IS_UDP(transport) ? "UDP" : "TCP",
                                ntohs(my_sockaddr.in6.sin6_port));
                    }
                }
            }
        }

        if (IS_UDP(transport)) {
            int c;

            for (c = 0; c < settings.num_threads_per_udp; c++) {
                int per_thread_fd;
                if (c == 0) {
                    per_thread_fd = sfd;
                } else {
                    per_thread_fd = dup(sfd);
                    if (per_thread_fd < 0) {
                        perror("Failed to duplicate file descriptor");
                        exit(EXIT_FAILURE);
                    }
                }
                dispatch_conn_new(per_thread_fd, conn_read,
                                  EV_READ | EV_PERSIST,
                                  UDP_READ_BUFFER_SIZE, transport, ((void*)0));
            }
        } else {
            if (!(listen_conn_add = conn_new(sfd, conn_listening,
                                             EV_READ | EV_PERSIST, 1,
                                             transport, main_base, ((void*)0)))) {
                fprintf(stderr, "failed to create listening connection\n");
                exit(EXIT_FAILURE);
            }



            assert(ssl_enabled == 0);

            listen_conn_add->next = listen_conn;
            listen_conn = listen_conn_add;
        }
    }

    freeaddrinfo(ai);


    return success == 0;
}
