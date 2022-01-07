
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_cons_printf (char*) ;
 int r_core_run_script (int *,char*) ;

__attribute__((used)) static int cmd_stdin(void *data, const char *input) {
 RCore *core = (RCore *)data;
 if (input[0] == '?') {
  r_cons_printf ("Usage: '-' '.-' '. -' do the same\n");
  return 0;
 }
 return r_core_run_script (core, "-");
}
