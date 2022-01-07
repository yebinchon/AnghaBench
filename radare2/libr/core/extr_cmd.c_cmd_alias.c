
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_5__ {int num; int rcmd; int flags; } ;
typedef TYPE_1__ RCore ;


 scalar_t__ UT64_MAX ;
 int eprintf (char*,char*) ;
 int free (char*) ;
 int help_msg_dollar ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 char* r_base64_encode_dyn (char*,int) ;
 int r_cmd_alias_del (int ,char*) ;
 char* r_cmd_alias_get (int ,char*,int ) ;
 char** r_cmd_alias_keys (int ,int*) ;
 int r_cmd_alias_set (int ,char*,char*,int ) ;
 char* r_cons_editor (int *,char*) ;
 int r_cons_newline () ;
 int r_cons_print (char*) ;
 int r_cons_printf (char*,char*,char*) ;
 int r_cons_println (char*) ;
 int r_cons_strcat (char*) ;
 int r_core_cmd0 (TYPE_1__*,char*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int r_core_seek (TYPE_1__*,scalar_t__,int) ;
 int r_flag_set (int ,char*,scalar_t__,int) ;
 scalar_t__ r_num_get (int ,char*) ;
 scalar_t__ r_num_math (int ,char*) ;
 char* r_str_newf (char*,char*,char*) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 void* strlen (char const*) ;

__attribute__((used)) static int cmd_alias(void *data, const char *input) {
 RCore *core = (RCore *)data;
 if (*input == '?') {
  r_core_cmd_help (core, help_msg_dollar);
  return 0;
 }
 int i = strlen (input);
 char *buf = malloc (i + 2);
 if (!buf) {
  return 0;
 }
 *buf = '$';
 memcpy (buf + 1, input, i + 1);
 char *q = strchr (buf, ' ');
 char *def = strchr (buf, '=');
 char *desc = strchr (buf, '?');
 char *nonl = strchr (buf, 'n');

 int defmode = 0;
 if (def && def > buf) {
  char *prev = def - 1;
  switch (*prev) {
  case ':':
   defmode = *prev;
   *prev = 0;
   break;
  case '+':
   defmode = *prev;
   *prev = 0;
   break;
  case '-':
   defmode = *prev;
   *prev = 0;
   break;
  }
 }


 if ((def && q && (def < q)) || (def && !q)) {
  *def++ = 0;
  size_t len = strlen (def);
  if (defmode) {
   ut64 at = r_num_math (core->num, def);
   switch (defmode) {
   case ':':
    r_flag_set (core->flags, buf + 1, at, 1);
    return 1;
   case '+':
    at = r_num_get (core->num, buf + 1) + at;
    r_flag_set (core->flags, buf + 1, at, 1);
    return 1;
   case '-':
    at = r_num_get (core->num, buf + 1) - at;
    r_flag_set (core->flags, buf + 1, at, 1);
    return 1;
   }
  }

  if (len > 0 && (def[0] == '\'') && (def[len - 1] == '\'')) {
   def[len - 1] = 0x00;
   def++;
  }
  if (!q || (q && q > def)) {
   if (*def) {
    if (!strcmp (def, "-")) {
     char *v = r_cmd_alias_get (core->rcmd, buf, 0);
     char *n = r_cons_editor (((void*)0), v);
     if (n) {
      r_cmd_alias_set (core->rcmd, buf, n, 0);
      free (n);
     }
    } else {
     r_cmd_alias_set (core->rcmd, buf, def, 0);
    }
   } else {
    r_cmd_alias_del (core->rcmd, buf);
   }
  }

 } else if (desc && !q) {
  *desc = 0;
  char *v = r_cmd_alias_get (core->rcmd, buf, 0);
  if (v) {
   if (nonl == desc + 1) {
    r_cons_print (v);
   } else {
    r_cons_println (v);
   }
   free (buf);
   return 1;
  } else {
   eprintf ("unknown key '%s'\n", buf);
  }
 } else if (buf[1] == '*') {

  int i, count = 0;
  char **keys = r_cmd_alias_keys (core->rcmd, &count);
  for (i = 0; i < count; i++) {
   char *v = r_cmd_alias_get (core->rcmd, keys[i], 0);
   char *q = r_base64_encode_dyn (v, -1);
   if (buf[2] == '*') {
    r_cons_printf ("%s=%s\n", keys[i], v);
   } else {
    r_cons_printf ("%s=base64:%s\n", keys[i], q);
   }
   free (q);
  }
 } else if (!buf[1]) {
  int i, count = 0;
  char **keys = r_cmd_alias_keys (core->rcmd, &count);
  for (i = 0; i < count; i++) {
   r_cons_println (keys[i]);
  }
 } else {

  if (q) {
   *q = 0;
  }
  char *v = r_cmd_alias_get (core->rcmd, buf, 0);
  if (v) {
   if (*v == '$') {
    r_cons_strcat (v + 1);
    r_cons_newline ();
   } else if (q) {
    char *out = r_str_newf ("%s %s", v, q + 1);
    r_core_cmd0 (core, out);
    free (out);
   } else {
    r_core_cmd0 (core, v);
   }
  } else {
   ut64 at = r_num_get (core->num, buf + 1);
   if (at != UT64_MAX) {
    r_core_seek (core, at, 1);
   } else {
    eprintf ("Unknown alias '%s'\n", buf + 1);
   }
  }
 }
 free (buf);
 return 0;
}
