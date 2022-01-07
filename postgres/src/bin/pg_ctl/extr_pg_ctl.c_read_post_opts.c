
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RESTART_COMMAND ;
 int _ (char*) ;
 scalar_t__ ctl_command ;
 int * exec_path ;
 int exit (int) ;
 int free_readfile (char**) ;
 void* pg_strdup (char*) ;
 char* post_opts ;
 int postopts_file ;
 int progname ;
 char** readfile (int ,int*) ;
 char* strstr (char*,char*) ;
 int write_stderr (int ,int ,int ) ;

__attribute__((used)) static void
read_post_opts(void)
{
 if (post_opts == ((void*)0))
 {
  post_opts = "";
  if (ctl_command == RESTART_COMMAND)
  {
   char **optlines;
   int numlines;

   optlines = readfile(postopts_file, &numlines);
   if (optlines == ((void*)0))
   {
    write_stderr(_("%s: could not read file \"%s\"\n"), progname, postopts_file);
    exit(1);
   }
   else if (numlines != 1)
   {
    write_stderr(_("%s: option file \"%s\" must have exactly one line\n"),
        progname, postopts_file);
    exit(1);
   }
   else
   {
    char *optline;
    char *arg1;

    optline = optlines[0];





    if ((arg1 = strstr(optline, " \"")) != ((void*)0))
    {
     *arg1 = '\0';
     post_opts = pg_strdup(arg1 + 1);
    }
    if (exec_path == ((void*)0))
     exec_path = pg_strdup(optline);
   }


   free_readfile(optlines);
  }
 }
}
