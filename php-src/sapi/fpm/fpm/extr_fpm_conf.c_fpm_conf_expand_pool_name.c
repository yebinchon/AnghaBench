
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int name; } ;


 TYPE_2__* current_wp ;
 int efree (char*) ;
 int free (char*) ;
 int spprintf (char**,int ,char*,char*,int ,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static int fpm_conf_expand_pool_name(char **value) {
 char *token;

 if (!value || !*value) {
  return 0;
 }

 while (*value && (token = strstr(*value, "$pool"))) {
  char *buf;
  char *p2 = token + strlen("$pool");


  if (!current_wp || !current_wp->config || !current_wp->config->name) {
   return -1;
  }


  token[0] = '\0';


  spprintf(&buf, 0, "%s%s%s", *value, current_wp->config->name, p2);


  free(*value);
  *value = strdup(buf);
  efree(buf);
 }

 return 0;
}
