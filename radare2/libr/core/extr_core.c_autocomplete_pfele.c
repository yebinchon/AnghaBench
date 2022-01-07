
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* print; } ;
struct TYPE_4__ {int formats; } ;
typedef int RLineCompletion ;
typedef TYPE_2__ RCore ;


 int free (char*) ;
 int r_line_completion_push (int *,char*) ;
 char* r_str_newf (char*,char*,char*,char const*) ;
 char* r_str_word_get0 (char*,int) ;
 int r_str_word_set0_stack (char*) ;
 char* sdb_get (int ,char*,int *) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static int autocomplete_pfele (RCore *core, RLineCompletion *completion, char *key, char *pfx, int idx, char *ptr) {
 int i, ret = 0;
 int len = strlen (ptr);
 char* fmt = sdb_get (core->print->formats, key, ((void*)0));
 if (fmt) {
  int nargs = r_str_word_set0_stack (fmt);
  if (nargs > 1) {
   for (i = 1; i < nargs; i++) {
    const char *arg = r_str_word_get0 (fmt, i);
    char *p = strchr (arg, '(');
    char *p2 = strchr (arg, ')');

    if (p && p2) {
     arg = p + 1;
     *p2 = '\0';
    }
    if (!len || !strncmp (ptr, arg, len)) {
     char *s = r_str_newf ("pf%s.%s.%s", pfx, key, arg);
     r_line_completion_push (completion, s);
     free (s);
    }
   }
  }
 }
 free (fmt);
 return ret;
}
