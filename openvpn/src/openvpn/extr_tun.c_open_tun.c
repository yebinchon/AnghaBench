
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int dummy; } ;


 int open_tun_generic (char const*,char const*,char const*,int,struct tuntap*) ;

void
open_tun(const char *dev, const char *dev_type, const char *dev_node, struct tuntap *tt)
{
    open_tun_generic(dev, dev_type, dev_node, 1, tt);
}
