
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EG (int ) ;
 char* cli_completion_generator_ht (char const*,size_t,int*,int ,int *) ;
 int ini_directives ;
 char* malloc (scalar_t__) ;
 char rl_completion_append_character ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *cli_completion_generator_ini(const char *text, size_t textlen, int *state)
{
 char *retval, *tmp;

 tmp = retval = cli_completion_generator_ht(text + 1, textlen - 1, state, EG(ini_directives), ((void*)0));
 if (retval) {
  retval = malloc(strlen(tmp) + 2);
  retval[0] = '#';
  strcpy(&retval[1], tmp);
  rl_completion_append_character = '=';
 }
 return retval;
}
