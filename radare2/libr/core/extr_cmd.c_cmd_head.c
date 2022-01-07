
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ RCore ;


 int atoi (char*) ;
 int eprintf (char*) ;
 int free (char*) ;
 int r_cons_print (char*) ;
 int r_core_cmdf (TYPE_1__*,char*,char*) ;
 int r_fs_check (int ,char*) ;
 scalar_t__ r_str_trim_ro (char*) ;
 char* r_syscmd_head (char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static int cmd_head (void *data, const char *_input) {
 RCore *core = (RCore *)data;
 int lines = 5;
 char *input = strdup (_input);
 char *arg = strchr (input, ' ');
 char *tmp, *count;
 if (arg) {
  arg = (char *)r_str_trim_ro (arg + 1);
  count = strchr (arg, ' ');
  if (count) {
   *count = 0;
   tmp = (char *)r_str_trim_ro (count + 1);
   lines = atoi (arg);
   arg = tmp;
  }
 }
 switch (*input) {
 case '?':
  eprintf ("Usage: head [file] # to list first n lines in file\n");
  break;
 default:
  if (!arg) {
   arg = "";
  }
  if (r_fs_check (core->fs, arg)) {
   r_core_cmdf (core, "md %s", arg);
  } else {
   char *res = r_syscmd_head (arg, lines);
   if (res) {
    r_cons_print (res);
    free (res);
   }
  }
  break;
 }
 free (input);
 return 0;
}
