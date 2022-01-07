
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int fd; int ip_fd; int * hand; } ;


 int CLEAR (struct tuntap) ;

__attribute__((used)) static void
clear_tuntap(struct tuntap *tuntap)
{
    CLEAR(*tuntap);



    tuntap->fd = -1;




}
