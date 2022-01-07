
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* iface ;
 int net_iface_up (int *,char*,int) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static int
net__iface_up(bool up)
{
    printf("CMD: ip link set %s %s\n", iface, up ? "up" : "down");

    return net_iface_up(((void*)0), iface, up);
}
