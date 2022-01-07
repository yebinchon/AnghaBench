
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int free (char*) ;
 int r_cons_print (char*) ;
 int r_core_cmdf (TYPE_1__*,char*,char const*) ;
 int r_fs_check (int ,char const*) ;
 char* r_str_trim_ro (char const*) ;
 char* r_syscmd_uniq (char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int cmd_uniq(void *data, const char *input) {
 RCore *core = (RCore *)data;
 const char *arg = strchr (input, ' ');
 if (arg) {
  arg = r_str_trim_ro (arg + 1);
 }
 switch (*input) {
 case '?':
  eprintf ("Usage: uniq # uniq to list unique strings in file\n");
  break;
 default:
  if (!arg) {
   arg = "";
  }
  if (r_fs_check (core->fs, arg)) {
   r_core_cmdf (core, "md %s", arg);
  } else {
   char *res = r_syscmd_uniq (arg);
   if (res) {
    r_cons_print (res);
    free (res);
   }
  }
  break;
 }
 return 0;
}
