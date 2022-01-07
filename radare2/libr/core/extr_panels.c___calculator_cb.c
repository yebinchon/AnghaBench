
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 char* __show_status_input (int *,char*) ;
 int free (char*) ;
 int r_cons_flush () ;
 int r_core_cmdf (int *,char*,char*) ;

int __calculator_cb(void *user) {
 RCore *core = (RCore *)user;
 for (;;) {
  char *s = __show_status_input (core, "> ");
  if (!s || !*s) {
   free (s);
   break;
  }
  r_core_cmdf (core, "? %s", s);
  r_cons_flush ();
  free (s);
 }
 return 0;
}
