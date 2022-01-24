#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nn_transport {char const* name; } ;
struct nn_sock {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int EPROTONOSUPPORT ; 
 size_t NN_SOCKADDR_MAX ; 
 scalar_t__ FUNC0 (char const*,char const*,size_t) ; 
 int FUNC1 (struct nn_sock*,struct nn_transport const*,int,char const*) ; 
 struct nn_transport** nn_transports ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4 (struct nn_sock *sock, const char *addr,
    int bind)
{
    int rc;
    const char *proto;
    const char *delim;
    size_t protosz;
    const struct nn_transport *tp;
    int i;

    /*  Check whether address is valid. */
    if (!addr)
        return -EINVAL;
    if (FUNC3 (addr) >= NN_SOCKADDR_MAX)
        return -ENAMETOOLONG;

    /*  Separate the protocol and the actual address. */
    proto = addr;
    delim = FUNC2 (addr, ':');
    if (!delim)
        return -EINVAL;
    if (delim [1] != '/' || delim [2] != '/')
        return -EINVAL;
    protosz = delim - addr;
    addr += protosz + 3;

    /*  Find the specified protocol. */
    tp = NULL;
    for (i = 0; ((tp = nn_transports[i]) != NULL); i++) {
        if (FUNC3 (tp->name) == protosz &&
              FUNC0 (tp->name, proto, protosz) == 0)
            break;
    }

    /*  The protocol specified doesn't match any known protocol. */
    if (tp == NULL) {
        return -EPROTONOSUPPORT;
    }

    /*  Ask the socket to create the endpoint. */
    rc = FUNC1 (sock, tp, bind, addr);
    return rc;
}