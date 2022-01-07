
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int get_opt_str (int*,char***,char**,char const*) ;

__attribute__((used)) static bool get_opt_int(int *p_argc, char ***p_argv, int *i, const char *opt)
{
 char *str;

 if (!get_opt_str(p_argc, p_argv, &str, opt)) {
  return 0;
 }

 *i = atoi(str);
 return 1;
}
