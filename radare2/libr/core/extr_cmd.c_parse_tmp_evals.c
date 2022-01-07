
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*,char*) ;
 int free (char*) ;
 char* r_config_get (int ,char*) ;
 int r_config_set (int ,char*,char*) ;
 char* r_str_newf (char*,char*,char const*) ;
 char* r_str_prepend (char*,char*) ;
 int r_str_split (char*,char) ;
 scalar_t__ r_str_word_get0 (char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *parse_tmp_evals(RCore *core, const char *str) {
 char *s = strdup (str);
 int i, argc = r_str_split (s, ',');
 char *res = strdup ("");
 if (!s || !res) {
  free (s);
  free (res);
  return ((void*)0);
 }
 for (i = 0; i < argc; i++) {
  char *eq, *kv = (char *)r_str_word_get0 (s, i);
  if (!kv) {
   break;
  }
  eq = strchr (kv, '=');
  if (eq) {
   *eq = 0;
   const char *ov = r_config_get (core->config, kv);
   if (!ov) {
    continue;
   }
   char *cmd = r_str_newf ("e %s=%s;", kv, ov);
   if (!cmd) {
    free (s);
    free (res);
    return ((void*)0);
   }
   res = r_str_prepend (res, cmd);
   free (cmd);
   r_config_set (core->config, kv, eq + 1);
   *eq = '=';
  } else {
   eprintf ("Missing '=' in e: expression (%s)\n", kv);
  }
 }
 free (s);
 return res;
}
