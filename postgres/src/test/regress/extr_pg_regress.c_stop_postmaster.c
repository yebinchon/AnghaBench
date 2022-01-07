
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MAXPGPATH ;
 char* _ (char*) ;
 int _exit (int) ;
 char* bindir ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,int) ;
 int postmaster_running ;
 char* progname ;
 int snprintf (char*,int,char*,char*,char*,int ) ;
 int stderr ;
 int stdout ;
 int system (char*) ;
 int temp_instance ;

__attribute__((used)) static void
stop_postmaster(void)
{
 if (postmaster_running)
 {

  char buf[MAXPGPATH * 2];
  int r;


  fflush(stdout);
  fflush(stderr);

  snprintf(buf, sizeof(buf),
     "\"%s%spg_ctl\" stop -D \"%s/data\" -s",
     bindir ? bindir : "",
     bindir ? "/" : "",
     temp_instance);
  r = system(buf);
  if (r != 0)
  {
   fprintf(stderr, _("\n%s: could not stop postmaster: exit code was %d\n"),
     progname, r);
   _exit(2);
  }

  postmaster_running = 0;
 }
}
