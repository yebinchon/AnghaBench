
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

__attribute__((used)) static bool get_opt_str(int *p_argc, char ***p_argv, char **str,
   const char *opt)
{
 int argc = *p_argc;
 char **argv = *p_argv;

 if (!argc) {
  printf("Missing expected option: '%s'\n", opt);
  return 0;
 }

 (*p_argc)--;
 (*p_argv)++;
 *str = argv[0];
 return 1;
}
