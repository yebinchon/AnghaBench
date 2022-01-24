#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
struct linger {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct addrinfo {scalar_t__ ai_family; TYPE_5__* ai_addr; int /*<<< orphan*/  ai_addrlen; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_flags; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  port_buf ;
typedef  int /*<<< orphan*/  my_sockaddr ;
typedef  int /*<<< orphan*/  ling ;
typedef  int /*<<< orphan*/  flags ;
typedef  enum network_transport { ____Placeholder_network_transport } network_transport ;
struct TYPE_6__ {int ssl_enabled; struct TYPE_6__* next; } ;
typedef  TYPE_1__ conn ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
struct TYPE_7__ {int num_threads_per_udp; int /*<<< orphan*/  backlog; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 scalar_t__ EADDRINUSE ; 
 int EAI_SYSTEM ; 
 scalar_t__ EMFILE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 scalar_t__ FUNC0 (int) ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_LINGER ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  UDP_READ_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  conn_listening ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conn_read ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*) ; 
 char* FUNC10 (int) ; 
 int FUNC11 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC12 (int,struct sockaddr*,int*) ; 
 int FUNC13 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* listen_conn ; 
 int /*<<< orphan*/  main_base ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (struct addrinfo*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 TYPE_2__ settings ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC20(const char *interface,
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

    hints.ai_socktype = FUNC0(transport) ? SOCK_DGRAM : SOCK_STREAM;

    if (port == -1) {
        port = 0;
    }
    FUNC19(port_buf, sizeof(port_buf), "%d", port);
    error= FUNC11(interface, port_buf, &hints, &ai);
    if (error != 0) {
        if (error != EAI_SYSTEM)
          FUNC8(stderr, "getaddrinfo(): %s\n", FUNC10(error));
        else
          FUNC17("getaddrinfo()");
        return 1;
    }

    for (next= ai; next; next= next->ai_next) {
        conn *listen_conn_add;
        if ((sfd = FUNC15(next)) == -1) {
            /* getaddrinfo can return "junk" addresses,
             * we make sure at least one works before erroring.
             */
            if (errno == EMFILE) {
                /* ...unless we're out of fds */
                FUNC17("server_socket");
                FUNC7(EX_OSERR);
            }
            continue;
        }

#ifdef IPV6_V6ONLY
        if (next->ai_family == AF_INET6) {
            error = setsockopt(sfd, IPPROTO_IPV6, IPV6_V6ONLY, (char *) &flags, sizeof(flags));
            if (error != 0) {
                perror("setsockopt");
                close(sfd);
                continue;
            }
        }
#endif

        FUNC18(sfd, SOL_SOCKET, SO_REUSEADDR, (void *)&flags, sizeof(flags));
        if (FUNC0(transport)) {
            FUNC14(sfd);
        } else {
            error = FUNC18(sfd, SOL_SOCKET, SO_KEEPALIVE, (void *)&flags, sizeof(flags));
            if (error != 0)
                FUNC17("setsockopt");

            error = FUNC18(sfd, SOL_SOCKET, SO_LINGER, (void *)&ling, sizeof(ling));
            if (error != 0)
                FUNC17("setsockopt");

            error = FUNC18(sfd, IPPROTO_TCP, TCP_NODELAY, (void *)&flags, sizeof(flags));
            if (error != 0)
                FUNC17("setsockopt");
        }

        if (FUNC2(sfd, next->ai_addr, next->ai_addrlen) == -1) {
            if (errno != EADDRINUSE) {
                FUNC17("bind()");
                FUNC3(sfd);
                FUNC9(ai);
                return 1;
            }
            FUNC3(sfd);
            continue;
        } else {
            success++;
            if (!FUNC0(transport) && FUNC13(sfd, settings.backlog) == -1) {
                FUNC17("listen()");
                FUNC3(sfd);
                FUNC9(ai);
                return 1;
            }
            if (portnumber_file != NULL &&
                (next->ai_addr->sa_family == AF_INET ||
                 next->ai_addr->sa_family == AF_INET6)) {
                union {
                    struct sockaddr_in in;
                    struct sockaddr_in6 in6;
                } my_sockaddr;
                socklen_t len = sizeof(my_sockaddr);
                if (FUNC12(sfd, (struct sockaddr*)&my_sockaddr, &len)==0) {
                    if (next->ai_addr->sa_family == AF_INET) {
                        FUNC8(*portnumber_file, "%s INET: %u\n",
                                FUNC0(transport) ? "UDP" : "TCP",
                                FUNC16(my_sockaddr.in.sin_port));
                    } else {
                        FUNC8(*portnumber_file, "%s INET6: %u\n",
                                FUNC0(transport) ? "UDP" : "TCP",
                                FUNC16(my_sockaddr.in6.sin6_port));
                    }
                }
            }
        }

        if (FUNC0(transport)) {
            int c;

            for (c = 0; c < settings.num_threads_per_udp; c++) {
                /* Allocate one UDP file descriptor per worker thread;
                 * this allows "stats conns" to separately list multiple
                 * parallel UDP requests in progress.
                 *
                 * The dispatch code round-robins new connection requests
                 * among threads, so this is guaranteed to assign one
                 * FD to each thread.
                 */
                int per_thread_fd;
                if (c == 0) {
                    per_thread_fd = sfd;
                } else {
                    per_thread_fd = FUNC6(sfd);
                    if (per_thread_fd < 0) {
                        FUNC17("Failed to duplicate file descriptor");
                        FUNC7(EXIT_FAILURE);
                    }
                }
                FUNC5(per_thread_fd, conn_read,
                                  EV_READ | EV_PERSIST,
                                  UDP_READ_BUFFER_SIZE, transport, NULL);
            }
        } else {
            if (!(listen_conn_add = FUNC4(sfd, conn_listening,
                                             EV_READ | EV_PERSIST, 1,
                                             transport, main_base, NULL))) {
                FUNC8(stderr, "failed to create listening connection\n");
                FUNC7(EXIT_FAILURE);
            }
#ifdef TLS
            listen_conn_add->ssl_enabled = ssl_enabled;
#else
            FUNC1(ssl_enabled == false);
#endif
            listen_conn_add->next = listen_conn;
            listen_conn = listen_conn_add;
        }
    }

    FUNC9(ai);

    /* Return zero iff we detected no errors in starting up connections */
    return success == 0;
}