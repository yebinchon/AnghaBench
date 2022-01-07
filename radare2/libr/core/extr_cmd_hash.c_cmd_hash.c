
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int cmd_hash_bang (int *,char const*) ;
 int r_core_cmd_help (int *,char const**) ;

__attribute__((used)) static int cmd_hash(void *data, const char *input) {
 RCore *core = (RCore *)data;

 if (*input == '!') {
  return cmd_hash_bang (core, input);
 }
 if (*input == '?') {
  const char *helpmsg3[] = {
  "Usage #!interpreter [<args>] [<file] [<<eof]","","",
  " #", "", "comment - do nothing",
  " #!","","list all available interpreters",
  " #!python","","run python commandline",
  " #!python"," foo.py","run foo.py python script (same as '. foo.py')",

  " #!python"," arg0 a1 <<q","set arg0 and arg1 and read until 'q'",
  ((void*)0)};
  r_core_cmd_help (core, helpmsg3);
  return 0;
 }


 return 0;
}
