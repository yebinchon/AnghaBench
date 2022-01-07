
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int GET ;
 int PARAM_MODE ;
 int interface ;
 int wl_iovar_get (int ,char*,int*,int) ;
 int wl_iovar_setint (int ,char*,int) ;

__attribute__((used)) static int wlc_afterburner(wlc_param param, void *data, void *value)
{
 int *val = (int *) value;
 int ret = 0;

 if ((param & PARAM_MODE) == GET) {
  ret = wl_iovar_get(interface, "afterburner", val, sizeof(int));
 } else {
  wl_iovar_setint(interface, "wlfeatureflag", (*val ? 3 : 0));
  ret = wl_iovar_setint(interface, "afterburner", (*val ? 1 : 0));
  wl_iovar_setint(interface, "afterburner_override", *val);
 }

 return ret;
}
