
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t SSID_len; int SSID; } ;
typedef TYPE_1__ wlc_ssid_t ;
typedef int wlc_param ;
typedef int ssid ;


 int GET ;
 int PARAM_MODE ;
 int SET ;
 int WLC_GET_SSID ;
 int WLC_SET_SSID ;
 int interface ;
 int memcpy (char*,int ,size_t) ;
 size_t strlen (void*) ;
 int strncpy (int ,void*,int) ;
 scalar_t__ vif ;
 int wl_bssiovar_get (int ,char*,scalar_t__,TYPE_1__*,int) ;
 int wl_bssiovar_set (int ,char*,scalar_t__,TYPE_1__*,int) ;
 int wl_ioctl (int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static int wlc_ssid(wlc_param param, void *data, void *value)
{
 int ret = -1, ret2 = -1;
 char *dest = (char *) value;
 wlc_ssid_t ssid;

 if ((param & PARAM_MODE) == GET) {
  ret = wl_bssiovar_get(interface, "ssid", vif, &ssid, sizeof(ssid));

  if (ret)

   ret = wl_ioctl(interface, WLC_GET_SSID, &ssid, sizeof(ssid));

  if (!ret) {
   memcpy(dest, ssid.SSID, ssid.SSID_len);
   dest[ssid.SSID_len] = 0;
  }
 } else if ((param & PARAM_MODE) == SET) {
  strncpy(ssid.SSID, value, 32);
  ssid.SSID_len = strlen(value);

  if (ssid.SSID_len > 32)
   ssid.SSID_len = 32;

  if (vif == 0) {

   ret2 = wl_ioctl(interface, WLC_SET_SSID, &ssid, sizeof(ssid));
  }

  ret = wl_bssiovar_set(interface, "ssid", vif, &ssid, sizeof(ssid));
  ret = (!ret2 ? 0 : ret);
 }

 return ret;
}
