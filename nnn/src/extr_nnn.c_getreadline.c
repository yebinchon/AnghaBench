
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_LEN_MAX ;
 int add_history (char*) ;
 int chdir (char*) ;
 int exitcurses () ;
 int free (char*) ;
 char* g_buf ;
 int printwarn (int*) ;
 char* readline (char*) ;
 int refresh () ;
 int xstrlcpy (char*,char*,int ) ;

__attribute__((used)) static char *getreadline(char *prompt, char *path, char *curpath, int *presel)
{

 if (chdir(path) == -1) {
  printwarn(presel);
  return ((void*)0);
 }

 exitcurses();

 char *input = readline(prompt);

 refresh();

 if (chdir(curpath) == -1) {
  printwarn(presel);
  free(input);
  return ((void*)0);
 }

 if (input && input[0]) {
  add_history(input);
  xstrlcpy(g_buf, input, CMD_LEN_MAX);
  free(input);
  return g_buf;
 }

 free(input);
 return ((void*)0);
}
