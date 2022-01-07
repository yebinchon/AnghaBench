
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_socket_addr {int * current_remote; int * remote_list; } ;


 int freeaddrinfo (int *) ;

__attribute__((used)) static void
clear_remote_addrlist(struct link_socket_addr *lsa, bool free)
{
    if (lsa->remote_list && free)
    {
        freeaddrinfo(lsa->remote_list);
    }
    lsa->remote_list = ((void*)0);
    lsa->current_remote = ((void*)0);
}
