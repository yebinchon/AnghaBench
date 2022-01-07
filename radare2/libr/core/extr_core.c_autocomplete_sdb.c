
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sdb; } ;
typedef int Sdb ;
typedef int RLineCompletion ;
typedef TYPE_1__ RCore ;


 int r_line_completion_push (int *,char*) ;
 int r_return_if_fail (int ) ;
 char* r_str_ndup (char*,int) ;
 char* r_str_new (char const*) ;
 char* r_str_newf (char*,char*,...) ;
 char* r_str_trim_ro (char*) ;
 char* sdb_querys (int *,int *,int ,char*) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void autocomplete_sdb (RCore *core, RLineCompletion *completion, const char *str) {
 r_return_if_fail (core && completion && str);
 char *pipe = strchr (str, '>');
 Sdb *sdb = core->sdb;
 char *lpath = ((void*)0), *p1 = ((void*)0), *out = ((void*)0), *p2 = ((void*)0);
 char *cur_pos = ((void*)0), *cur_cmd = ((void*)0), *next_cmd = ((void*)0);
 char *temp_cmd = ((void*)0), *temp_pos = ((void*)0), *key = ((void*)0);
 if (pipe) {
  str = r_str_trim_ro (pipe + 1);
 }
 lpath = r_str_new (str);
 p1 = strstr (lpath, "/");
 if (p1) {
  *p1 = 0;
  char *ns = p1 + 1;
  p2 = strstr (ns, "/");
  if (!p2) {
   char *tmp = p1 + 1;
   int n = strlen (tmp);
   out = sdb_querys (sdb, ((void*)0), 0, "anal/**");
   if (!out) {
    return;
   }
   while (*out) {
    cur_pos = strchr (out, '\n');
    if (!cur_pos) {
     break;
    }
    cur_cmd = r_str_ndup (out, cur_pos - out);
    if (!strncmp (tmp, cur_cmd, n)) {
     char *cmplt = r_str_newf ("anal/%s/", cur_cmd);
     r_line_completion_push (completion, cmplt);
    }
    out += cur_pos - out + 1;
   }

  } else {
   char *tmp = p2 + 1;
   int n = strlen (tmp);
   char *spltr = strstr (ns, "/");
   *spltr = 0;
   next_cmd = r_str_newf ("anal/%s/*", ns);
   out = sdb_querys (sdb, ((void*)0), 0, next_cmd);
   if (!out) {
    return;
   }
   while (*out) {
    temp_pos = strchr (out, '\n');
    if (!temp_pos) {
     break;
    }
    temp_cmd = r_str_ndup (out, temp_pos - out);
    key = strstr (temp_cmd, "=");
    *key = 0;
    if (!strncmp (tmp, temp_cmd, n)) {
     char *cmplt = r_str_newf ("anal/%s/%s", ns, temp_cmd);
     r_line_completion_push (completion, cmplt);
    }
    out += temp_pos - out + 1;
   }
  }
 } else {
  int n = strlen (lpath);
  if (!strncmp (lpath, "anal", n)) {
   r_line_completion_push (completion, "anal/");
  }
 }
}
