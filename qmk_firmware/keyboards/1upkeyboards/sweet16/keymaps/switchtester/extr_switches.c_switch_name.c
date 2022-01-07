
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mechswitch {int dummy; } ;


 scalar_t__ MAX_SWITCH_NAME_LENGTH ;
 char* brand_name (struct mechswitch) ;
 char* color_name (struct mechswitch) ;
 int snprintf (char*,scalar_t__,char*,char*) ;
 scalar_t__ strlen (char const*) ;
 int strncat (char*,char const*,scalar_t__) ;
 char* variant_name (struct mechswitch) ;

void switch_name(struct mechswitch ms, char *buf) {
  const char *v_name = variant_name(ms);
  const char *c_name = color_name(ms);

  snprintf(buf, MAX_SWITCH_NAME_LENGTH, "%s", brand_name(ms));
  strncat(buf, " ", MAX_SWITCH_NAME_LENGTH - strlen(buf));
  if (strlen(v_name) > 0) {
    strncat(buf, v_name, MAX_SWITCH_NAME_LENGTH - strlen(buf));
    strncat(buf, " ", MAX_SWITCH_NAME_LENGTH - strlen(buf));
  }
  if (strlen(c_name) > 0) {
    strncat(buf, c_name, MAX_SWITCH_NAME_LENGTH - strlen(buf));
  }
}
