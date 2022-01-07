
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wsec_key ;
typedef int wlc_param ;
struct TYPE_4__ {int len; unsigned char* data; int flags; } ;
typedef TYPE_1__ wl_wsec_key_t ;


 int PARAM_MODE ;
 int SET ;
 int WL_PRIMARY_KEY ;
 int interface ;
 int memset (TYPE_1__*,int ,int) ;
 int strcpy (unsigned char*,unsigned char*) ;
 void* strlen (unsigned char*) ;
 scalar_t__ strncmp (unsigned char*,char*,int) ;
 scalar_t__ strtoul (unsigned char*,int *,int) ;
 int vif ;
 int wl_bssiovar_set (int ,char*,int ,TYPE_1__*,int) ;

__attribute__((used)) static int wlc_wsec_key(wlc_param param, void *null, void *value)
{
 wl_wsec_key_t wsec_key;
 unsigned char *index = value;
 unsigned char *key;
 unsigned char *data;
 unsigned char hex[3];

 if ((param & PARAM_MODE) != SET)
  return 0;

 memset(&wsec_key, 0, sizeof(wsec_key));
 if (index[0] == '=') {
  wsec_key.flags = WL_PRIMARY_KEY;
  index++;
 }

 if ((index[0] < '1') || (index[0] > '4') || (index[1] != ','))
  return -1;

 key = index + 2;
 if (strncmp(key, "d:", 2) == 0) {
 } else if (strncmp(key, "s:", 2) == 0) {
  key += 2;
  wsec_key.len = strlen(key);

  if ((wsec_key.len != 5) && (wsec_key.len != 13))
   return -1;

  strcpy(wsec_key.data, key);
 } else {
  wsec_key.len = strlen(key);
  if ((wsec_key.len != 10) && (wsec_key.len != 26))
   return -1;

  wsec_key.len /= 2;
  data = wsec_key.data;
  hex[2] = 0;
  do {
   hex[0] = *(key++);
   hex[1] = *(key++);
   *(data++) = (unsigned char) strtoul(hex, ((void*)0), 16);
  } while (*key != 0);
 }

 return wl_bssiovar_set(interface, "wsec_key", vif, &wsec_key, sizeof(wsec_key));
}
