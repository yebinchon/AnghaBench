
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;
typedef int buf ;


 int GET ;
 int SET ;
 int WLC_GET_VAR ;
 int WLC_SET_VAR ;
 int interface ;
 int sprintf (char*,char*) ;
 int vif ;
 int wl_ioctl (int ,int ,int*,int) ;

__attribute__((used)) static int wlc_vif_enabled(wlc_param param, void *data, void *value)
{
 int *val = (int *) value;
 int buf[3];
 int ret = 0;

 sprintf((char *) buf, "bss");
 buf[1] = vif;
 if (param & SET) {
  buf[2] = (*val ? 1 : 0);
  ret = wl_ioctl(interface, WLC_SET_VAR, buf, sizeof(buf));
 } else if (param & GET) {
  ret = wl_ioctl(interface, WLC_GET_VAR, buf, sizeof(buf));
  *val = buf[0];
 }

 return ret;
}
