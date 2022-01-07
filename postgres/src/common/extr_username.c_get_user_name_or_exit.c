
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char*) ;
 char* get_user_name (char**) ;
 int stderr ;

const char *
get_user_name_or_exit(const char *progname)
{
 const char *user_name;
 char *errstr;

 user_name = get_user_name(&errstr);

 if (!user_name)
 {
  fprintf(stderr, "%s: %s\n", progname, errstr);
  exit(1);
 }
 return user_name;
}
