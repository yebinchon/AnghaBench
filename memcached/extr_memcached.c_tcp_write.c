
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int sfd; } ;
typedef TYPE_1__ conn ;


 int assert (int ) ;
 int write (int ,void*,size_t) ;

ssize_t tcp_write(conn *c, void *buf, size_t count) {
    assert (c != ((void*)0));
    return write(c->sfd, buf, count);
}
