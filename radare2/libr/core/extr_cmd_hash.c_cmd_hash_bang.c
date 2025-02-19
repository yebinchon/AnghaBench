
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * cur; } ;
struct TYPE_9__ {TYPE_2__* lang; } ;
typedef int RLangPlugin ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 scalar_t__ r_cons_is_interactive () ;
 int * r_lang_get_by_extension (TYPE_2__*,char*) ;
 int r_lang_list (TYPE_2__*) ;
 int r_lang_prompt (TYPE_2__*) ;
 int r_lang_run_file (TYPE_2__*,char*) ;
 int r_lang_run_string (TYPE_2__*,char*) ;
 scalar_t__ r_lang_set_argv (TYPE_2__*,int,char**) ;
 scalar_t__ r_sandbox_enable (int ) ;
 char** r_str_argv (char const*,int*) ;
 int r_str_argv_free (char**) ;
 int strcmp (char*,char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int cmd_hash_bang (RCore *core, const char *input) {
 if (r_sandbox_enable (0)) {
  eprintf ("hashbang disabled in sandbox mode\n");
  return 0;
 }
 int ac;
 char **av = r_str_argv (input + 1, &ac);
 if (ac > 0) {
  RLangPlugin *p = r_lang_get_by_extension (core->lang, av[0]);
  if (p) {


   core->lang->cur = p;
   if (ac > 1) {
    if (!strcmp (av[1], "-e")) {
     char *run_str = strstr (input + 2, "-e") + 2;
     r_lang_run_string (core->lang, run_str);
    } else {
     if (r_lang_set_argv (core->lang, ac - 1, &av[1])) {
      r_lang_run_file (core->lang, av[1]);
     } else {
      char *run_str = strstr (input + 2, av[1]);
      r_lang_run_file (core->lang, run_str);
     }
    }
   } else {
    if (r_cons_is_interactive ()) {
     r_lang_prompt (core->lang);
    } else {
     eprintf ("Error: scr.interactive required to run the rlang prompt\n");
    }
   }
  } else if (av[0][0]=='?' || av[0][0]=='*') {
   r_lang_list (core->lang);
  }
 } else {
  r_lang_list (core->lang);
 }
 r_str_argv_free(av);
 return 1;
}
