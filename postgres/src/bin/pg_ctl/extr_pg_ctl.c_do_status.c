
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef scalar_t__ pgpid_t ;


 char* _ (char*) ;
 int exit (int) ;
 int free_readfile (char**) ;
 scalar_t__ get_pgpid (int) ;
 scalar_t__ postmaster_is_alive (int ) ;
 int postopts_file ;
 int printf (char*,char*,...) ;
 char* progname ;
 int puts (char*) ;
 char** readfile (int ,int*) ;

__attribute__((used)) static void
do_status(void)
{
 pgpid_t pid;

 pid = get_pgpid(1);

 if (pid != 0)
 {

  if (pid < 0)
  {
   pid = -pid;
   if (postmaster_is_alive((pid_t) pid))
   {
    printf(_("%s: single-user server is running (PID: %ld)\n"),
        progname, pid);
    return;
   }
  }
  else

  {
   if (postmaster_is_alive((pid_t) pid))
   {
    char **optlines;
    char **curr_line;
    int numlines;

    printf(_("%s: server is running (PID: %ld)\n"),
        progname, pid);

    optlines = readfile(postopts_file, &numlines);
    if (optlines != ((void*)0))
    {
     for (curr_line = optlines; *curr_line != ((void*)0); curr_line++)
      puts(*curr_line);


     free_readfile(optlines);
    }
    return;
   }
  }
 }
 printf(_("%s: no server running\n"), progname);






 exit(3);
}
