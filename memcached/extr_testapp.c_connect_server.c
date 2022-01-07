
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn {int sock; int write; int read; int * ssl; int * ssl_ctx; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int in_port_t ;


 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int * SSL_CTX_new (int ) ;
 int SSL_ERROR_SSL ;
 int SSL_ERROR_SYSCALL ;
 int SSL_connect (int *) ;
 int SSL_get_error (int *,int) ;
 int * SSL_new (int *) ;
 int SSL_set_fd (int *,int) ;
 int SSLv23_client_method () ;
 scalar_t__ calloc (int,int) ;
 int close (int) ;
 int connect (int,int ,int ) ;
 int errno ;
 int fcntl (int,int ,int) ;
 int fprintf (int ,char*,char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 struct addrinfo* lookuphost (char const*,int ) ;
 int socket (int ,int ,int ) ;
 int ssl_read ;
 int ssl_write ;
 int stderr ;
 char* strerror (int ) ;
 int tcp_read ;
 int tcp_write ;

__attribute__((used)) static struct conn *connect_server(const char *hostname, in_port_t port,
                            bool nonblock, const bool ssl)
{
    struct conn *c;
    if (!(c = (struct conn *)calloc(1, sizeof(struct conn)))) {
        fprintf(stderr, "Failed to allocate the client connection: %s\n",
                strerror(errno));
        return ((void*)0);
    }

    struct addrinfo *ai = lookuphost(hostname, port);
    int sock = -1;
    if (ai != ((void*)0)) {
       if ((sock = socket(ai->ai_family, ai->ai_socktype,
                          ai->ai_protocol)) != -1) {
          if (connect(sock, ai->ai_addr, ai->ai_addrlen) == -1) {
             fprintf(stderr, "Failed to connect socket: %s\n",
                     strerror(errno));
             close(sock);
             sock = -1;
          } else if (nonblock) {
              int flags = fcntl(sock, F_GETFL, 0);
              if (flags < 0 || fcntl(sock, F_SETFL, flags | O_NONBLOCK) < 0) {
                  fprintf(stderr, "Failed to enable nonblocking mode: %s\n",
                          strerror(errno));
                  close(sock);
                  sock = -1;
              }
          }
       } else {
          fprintf(stderr, "Failed to create socket: %s\n", strerror(errno));
       }

       freeaddrinfo(ai);
    }
    c->sock = sock;
    {
        c->read = tcp_read;
        c->write = tcp_write;
    }
    return c;
}
