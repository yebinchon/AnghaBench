
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn {int sock; } ;
typedef int ssize_t ;


 int assert (int ) ;
 int read (int ,void*,size_t) ;

ssize_t tcp_read(struct conn *c, void *buf, size_t count) {
    assert(c != ((void*)0));
    return read(c->sock, buf, count);
}
