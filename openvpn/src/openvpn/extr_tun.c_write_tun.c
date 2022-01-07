
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tuntap {int fd; } ;


 int write (int ,int *,int) ;

int
write_tun(struct tuntap *tt, uint8_t *buf, int len)
{
    return write(tt->fd, buf, len);
}
