
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 char* get_user_name_or_exit (int ) ;
 scalar_t__ geteuid () ;
 int pg_log_error (char*) ;
 char* pg_strdup (char const*) ;
 int progname ;
 int stderr ;

__attribute__((used)) static char *
get_id(void)
{
 const char *username;


 if (geteuid() == 0)
 {
  pg_log_error("cannot be run as root");
  fprintf(stderr,
    _("Please log in (using, e.g., \"su\") as the (unprivileged) user that will\n"
      "own the server process.\n"));
  exit(1);
 }


 username = get_user_name_or_exit(progname);

 return pg_strdup(username);
}
