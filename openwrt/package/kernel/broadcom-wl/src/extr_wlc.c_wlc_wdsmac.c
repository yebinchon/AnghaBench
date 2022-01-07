
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int WLC_WDS_GET_REMOTE_HWADDR ;
 int interface ;
 int my_ether_ntoa (unsigned char*,void*) ;
 int wl_ioctl (int ,int ,unsigned char**,int) ;

__attribute__((used)) static int wlc_wdsmac(wlc_param param, void *data, void *value)
{
 unsigned char mac[6];
 int ret = 0;

 ret = wl_ioctl(interface, WLC_WDS_GET_REMOTE_HWADDR, &mac, 6);
 if (ret == 0)
  my_ether_ntoa(mac, value);

 return ret;
}
