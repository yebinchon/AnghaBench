
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int GET ;
 int SET ;
 char* interface ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int wlc_ifname(wlc_param param, void *data, void *value)
{
 char *val = (char *) value;
 int ret = 0;

 if (param & SET) {
  if (strlen(val) < 16)
   strcpy(interface, val);
  else ret = -1;
 }
 if (param & GET) {
  strcpy(val, interface);
 }

 return ret;
}
