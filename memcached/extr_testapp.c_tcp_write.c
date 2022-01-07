
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn {int sock; } ;
typedef int ssize_t ;


 int assert (int ) ;
 int write (int ,void const*,size_t) ;

ssize_t tcp_write(struct conn *c, const void *buf, size_t count) {
    assert(c != ((void*)0));
    return write(c->sock, buf, count);
}
