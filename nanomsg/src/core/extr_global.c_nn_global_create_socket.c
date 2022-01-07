
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_socktype {int domain; int protocol; } ;
struct nn_sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ nsocks; int* unused; struct nn_sock** socks; } ;


 int AF_SP ;
 int AF_SP_RAW ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int EMFILE ;
 int ENOMEM ;
 scalar_t__ NN_MAX_SOCKETS ;
 struct nn_sock* nn_alloc (int,char*) ;
 int nn_free (struct nn_sock*) ;
 int nn_sock_init (struct nn_sock*,struct nn_socktype const*,int) ;
 struct nn_socktype** nn_socktypes ;
 TYPE_1__ self ;

int nn_global_create_socket (int domain, int protocol)
{
    int rc;
    int s;
    int i;
    const struct nn_socktype *socktype;
    struct nn_sock *sock;




    if (domain != AF_SP && domain != AF_SP_RAW) {
        return -EAFNOSUPPORT;
    }


    if (self.nsocks >= NN_MAX_SOCKETS) {
        return -EMFILE;
    }


    s = self.unused [NN_MAX_SOCKETS - self.nsocks - 1];


    for (i = 0; (socktype = nn_socktypes[i]) != ((void*)0); i++) {
        if (socktype->domain == domain && socktype->protocol == protocol) {


            if ((sock = nn_alloc (sizeof (struct nn_sock), "sock")) == ((void*)0))
                return -ENOMEM;
            rc = nn_sock_init (sock, socktype, s);
            if (rc < 0) {
                nn_free (sock);
                return rc;
            }


            self.socks [s] = sock;
            ++self.nsocks;
            return s;
        }
    }

    return -EINVAL;
}
