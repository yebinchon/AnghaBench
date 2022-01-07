
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msghdr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int sfd; } ;
typedef TYPE_1__ conn ;


 int assert (int ) ;
 int sendmsg (int ,struct msghdr*,int) ;

ssize_t tcp_sendmsg(conn *c, struct msghdr *msg, int flags) {
    assert (c != ((void*)0));
    return sendmsg(c->sfd, msg, flags);
}
