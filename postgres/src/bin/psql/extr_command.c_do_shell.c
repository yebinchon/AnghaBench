
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULT_SHELL ;
 int free (char*) ;
 char* getenv (char*) ;
 int pg_log_error (char*) ;
 char* psprintf (char*,char const*) ;
 int system (char const*) ;

__attribute__((used)) static bool
do_shell(const char *command)
{
 int result;

 if (!command)
 {
  char *sys;
  const char *shellName;

  shellName = getenv("SHELL");




  if (shellName == ((void*)0))
   shellName = DEFAULT_SHELL;



  sys = psprintf("exec %s", shellName);



  result = system(sys);
  free(sys);
 }
 else
  result = system(command);

 if (result == 127 || result == -1)
 {
  pg_log_error("\\!: failed");
  return 0;
 }
 return 1;
}
