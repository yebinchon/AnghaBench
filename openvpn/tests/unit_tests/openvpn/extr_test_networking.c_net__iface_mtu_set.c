
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* iface ;
 int net_iface_mtu_set (int *,char*,int) ;
 int printf (char*,char*,int) ;

__attribute__((used)) static int
net__iface_mtu_set(int mtu)
{
    printf("CMD: ip link set %s mtu %d\n", iface, mtu);

    return net_iface_mtu_set(((void*)0), iface, mtu);
}
