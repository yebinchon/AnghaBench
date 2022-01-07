
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_device_mtu (int,int ,int) ;
 int cfg_ifname ;
 int error (int,int ,char*,int) ;
 int fprintf (int ,char*,int) ;
 int get_device_mtu (int,int ) ;
 int stderr ;

__attribute__((used)) static void set_device_mtu(int fd, int mtu)
{
 int val;

 val = get_device_mtu(fd, cfg_ifname);
 fprintf(stderr, "device mtu (orig): %u\n", val);

 __set_device_mtu(fd, cfg_ifname, mtu);
 val = get_device_mtu(fd, cfg_ifname);
 if (val != mtu)
  error(1, 0, "unable to set device mtu to %u\n", val);

 fprintf(stderr, "device mtu (test): %u\n", val);
}
