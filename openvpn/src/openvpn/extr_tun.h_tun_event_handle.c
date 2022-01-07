
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int * fd; int rw_handle; } ;
typedef int * event_t ;



__attribute__((used)) static inline event_t
tun_event_handle(const struct tuntap *tt)
{



    return tt->fd;

}
