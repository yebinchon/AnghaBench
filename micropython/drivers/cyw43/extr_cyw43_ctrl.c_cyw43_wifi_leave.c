
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cyw43_t ;


 int CYW43_IOCTL_SET_DISASSOC ;
 int cyw43_ioctl (int *,int ,int ,int *,int) ;

int cyw43_wifi_leave(cyw43_t *self, int itf) {

    return cyw43_ioctl(self, CYW43_IOCTL_SET_DISASSOC, 0, ((void*)0), itf);
}
