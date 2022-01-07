
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AuxiliaryProcessMain (int,char**) ;
 int GucInfoMain () ;
 int LC_COLLATE ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LC_MONETARY ;
 int LC_NUMERIC ;
 int LC_TIME ;
 int MemoryContextInit () ;
 int PG_BACKEND_VERSIONSTR ;
 int PG_TEXTDOMAIN (char*) ;
 int PostgresMain (int,char**,int *,int ) ;
 int PostmasterMain (int,char**) ;
 int SubPostmasterMain (int,char**) ;
 int abort () ;
 int check_root (int ) ;
 int check_strxfrm_bug () ;
 int exit (int ) ;
 int fputs (int ,int ) ;
 int get_progname (char*) ;
 int get_user_name_or_exit (int ) ;
 int help (int ) ;
 int init_locale (char*,int ,char*) ;
 int pgwin32_install_crashdump_handler () ;
 int pgwin32_signal_initialize () ;
 int progname ;
 char** save_ps_display_args (int,char**) ;
 int set_pglocale_pgservice (char*,int ) ;
 int startup_hacks (int ) ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strdup (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int unsetenv (char*) ;

int
main(int argc, char *argv[])
{
 bool do_check_root = 1;
 progname = get_progname(argv[0]);




 startup_hacks(progname);
 argv = save_ps_display_args(argc, argv);
 MemoryContextInit();




 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("postgres"));
 init_locale("LC_COLLATE", LC_COLLATE, "");
 init_locale("LC_CTYPE", LC_CTYPE, "");
 init_locale("LC_MONETARY", LC_MONETARY, "C");
 init_locale("LC_NUMERIC", LC_NUMERIC, "C");
 init_locale("LC_TIME", LC_TIME, "C");






 unsetenv("LC_ALL");

 check_strxfrm_bug();





 if (argc > 1)
 {
  if (strcmp(argv[1], "--help") == 0 || strcmp(argv[1], "-?") == 0)
  {
   help(progname);
   exit(0);
  }
  if (strcmp(argv[1], "--version") == 0 || strcmp(argv[1], "-V") == 0)
  {
   fputs(PG_BACKEND_VERSIONSTR, stdout);
   exit(0);
  }
  if (strcmp(argv[1], "--describe-config") == 0)
   do_check_root = 0;
  else if (argc > 2 && strcmp(argv[1], "-C") == 0)
   do_check_root = 0;
 }





 if (do_check_root)
  check_root(progname);
 if (argc > 1 && strcmp(argv[1], "--boot") == 0)
  AuxiliaryProcessMain(argc, argv);
 else if (argc > 1 && strcmp(argv[1], "--describe-config") == 0)
  GucInfoMain();
 else if (argc > 1 && strcmp(argv[1], "--single") == 0)
  PostgresMain(argc, argv,
      ((void*)0),
      strdup(get_user_name_or_exit(progname)));
 else
  PostmasterMain(argc, argv);
 abort();
}
