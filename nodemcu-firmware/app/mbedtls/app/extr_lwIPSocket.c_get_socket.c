
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int conn; } ;
typedef TYPE_1__ lwIP_sock ;


 int NUM_SOCKETS ;
 TYPE_1__* sockets ;

__attribute__((used)) static lwIP_sock *get_socket(int s)
{
    lwIP_sock *sock = ((void*)0);

    if ((s < 0) || (s >= NUM_SOCKETS))
    {
        return ((void*)0);
    }

    sock = &sockets[s];

    if (!sock->conn)
    {
        return ((void*)0);
    }

    return sock;
}
