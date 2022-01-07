
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; scalar_t__* group; } ;
typedef TYPE_1__ key_type ;


 char* estrdup (char*) ;
 int spprintf (char**,int ,char*,scalar_t__*,char*) ;

char * inifile_key_string(const key_type *key)
{
 if (key->group && *key->group) {
  char *result;
  spprintf(&result, 0, "[%s]%s", key->group, key->name ? key->name : "");
  return result;
 } else if (key->name) {
  return estrdup(key->name);
 } else {
  return ((void*)0);
 }
}
