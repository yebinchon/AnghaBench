
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int af; } ;
struct link_socket {int sd; TYPE_1__ info; int mtu_discover_type; int sockflags; } ;


 int set_mtu_discover_type (int ,int ,int ) ;
 int set_nonblock (int ) ;
 int set_sock_extended_error_passing (int ) ;
 int socket_set_flags (int ,int ) ;

__attribute__((used)) static void
phase2_set_socket_flags(struct link_socket *sock)
{

    socket_set_flags(sock->sd, sock->sockflags);


    set_nonblock(sock->sd);


    set_mtu_discover_type(sock->sd, sock->mtu_discover_type, sock->info.af);





}
