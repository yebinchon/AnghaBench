
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_transport {char const* name; } ;
struct nn_sock {int dummy; } ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int EPROTONOSUPPORT ;
 size_t NN_SOCKADDR_MAX ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 int nn_sock_add_ep (struct nn_sock*,struct nn_transport const*,int,char const*) ;
 struct nn_transport** nn_transports ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int nn_global_create_ep (struct nn_sock *sock, const char *addr,
    int bind)
{
    int rc;
    const char *proto;
    const char *delim;
    size_t protosz;
    const struct nn_transport *tp;
    int i;


    if (!addr)
        return -EINVAL;
    if (strlen (addr) >= NN_SOCKADDR_MAX)
        return -ENAMETOOLONG;


    proto = addr;
    delim = strchr (addr, ':');
    if (!delim)
        return -EINVAL;
    if (delim [1] != '/' || delim [2] != '/')
        return -EINVAL;
    protosz = delim - addr;
    addr += protosz + 3;


    tp = ((void*)0);
    for (i = 0; ((tp = nn_transports[i]) != ((void*)0)); i++) {
        if (strlen (tp->name) == protosz &&
              memcmp (tp->name, proto, protosz) == 0)
            break;
    }


    if (tp == ((void*)0)) {
        return -EPROTONOSUPPORT;
    }


    rc = nn_sock_add_ep (sock, tp, bind, addr);
    return rc;
}
