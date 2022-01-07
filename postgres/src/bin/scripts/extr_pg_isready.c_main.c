
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
struct TYPE_4__ {char* val; scalar_t__ keyword; } ;
typedef TYPE_1__ PQconninfoOption ;
typedef int PGPing ;


 char* DEFAULT_CONNECT_TIMEOUT ;
 char* DEFAULT_PGSOCKET_DIR ;
 int PARAMS_ARRAY_SIZE ;
 int PG_TEXTDOMAIN (char*) ;




 TYPE_1__* PQconndefaults () ;
 TYPE_1__* PQconninfoParse (char const*,char**) ;
 int PQpingParams (char const**,char const**,int) ;
 char* _ (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 char* get_progname (char*) ;
 int getopt_long (int,char**,char*,struct option*,int *) ;
 int handle_help_version_opts (int,char**,char const*,int ) ;
 int help ;

 int optarg ;
 int optind ;
 int pg_log_error (char*,...) ;
 int pg_logging_init (char*) ;
 char* pg_strdup (int ) ;
 int printf (char*,...) ;

 int set_pglocale_pgservice (char*,int ) ;
 int stderr ;
 int * strchr (char const*,char) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int
main(int argc, char **argv)
{
 int c;

 const char *progname;

 const char *pghost = ((void*)0);
 const char *pgport = ((void*)0);
 const char *pguser = ((void*)0);
 const char *pgdbname = ((void*)0);
 const char *connect_timeout = DEFAULT_CONNECT_TIMEOUT;

 const char *pghost_str = ((void*)0);
 const char *pghostaddr_str = ((void*)0);
 const char *pgport_str = ((void*)0);



 const char *keywords[7];
 const char *values[7];

 bool quiet = 0;

 PGPing rv;
 PQconninfoOption *opts = ((void*)0);
 PQconninfoOption *defs = ((void*)0);
 PQconninfoOption *opt;
 PQconninfoOption *def;
 char *errmsg = ((void*)0);






 static struct option long_options[] = {
  {"dbname", 128, ((void*)0), 'd'},
  {"host", 128, ((void*)0), 'h'},
  {"port", 128, ((void*)0), 'p'},
  {"quiet", 129, ((void*)0), 'q'},
  {"timeout", 128, ((void*)0), 't'},
  {"username", 128, ((void*)0), 'U'},
  {((void*)0), 0, ((void*)0), 0}
 };

 pg_logging_init(argv[0]);
 progname = get_progname(argv[0]);
 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pgscripts"));
 handle_help_version_opts(argc, argv, progname, help);

 while ((c = getopt_long(argc, argv, "d:h:p:qt:U:", long_options, ((void*)0))) != -1)
 {
  switch (c)
  {
   case 'd':
    pgdbname = pg_strdup(optarg);
    break;
   case 'h':
    pghost = pg_strdup(optarg);
    break;
   case 'p':
    pgport = pg_strdup(optarg);
    break;
   case 'q':
    quiet = 1;
    break;
   case 't':
    connect_timeout = pg_strdup(optarg);
    break;
   case 'U':
    pguser = pg_strdup(optarg);
    break;
   default:
    fprintf(stderr, _("Try \"%s --help\" for more information.\n"), progname);





    exit(133);
  }
 }

 if (optind < argc)
 {
  pg_log_error("too many command-line arguments (first is \"%s\")",
      argv[optind]);
  fprintf(stderr, _("Try \"%s --help\" for more information.\n"), progname);





  exit(133);
 }

 keywords[0] = "host";
 values[0] = pghost;
 keywords[1] = "port";
 values[1] = pgport;
 keywords[2] = "user";
 values[2] = pguser;
 keywords[3] = "dbname";
 values[3] = pgdbname;
 keywords[4] = "connect_timeout";
 values[4] = connect_timeout;
 keywords[5] = "fallback_application_name";
 values[5] = progname;
 keywords[6] = ((void*)0);
 values[6] = ((void*)0);




 if (pgdbname &&
  (strncmp(pgdbname, "postgresql://", 13) == 0 ||
   strncmp(pgdbname, "postgres://", 11) == 0 ||
   strchr(pgdbname, '=') != ((void*)0)))
 {
  opts = PQconninfoParse(pgdbname, &errmsg);
  if (opts == ((void*)0))
  {
   pg_log_error("%s", errmsg);
   exit(133);
  }
 }

 defs = PQconndefaults();
 if (defs == ((void*)0))
 {
  pg_log_error("could not fetch default options");
  exit(133);
 }

 for (opt = opts, def = defs; def->keyword; def++)
 {
  if (strcmp(def->keyword, "host") == 0)
  {
   if (opt && opt->val)
    pghost_str = opt->val;
   else if (pghost)
    pghost_str = pghost;
   else if (def->val)
    pghost_str = def->val;
   else
    pghost_str = DEFAULT_PGSOCKET_DIR;
  }
  else if (strcmp(def->keyword, "hostaddr") == 0)
  {
   if (opt && opt->val)
    pghostaddr_str = opt->val;
   else if (def->val)
    pghostaddr_str = def->val;
  }
  else if (strcmp(def->keyword, "port") == 0)
  {
   if (opt && opt->val)
    pgport_str = opt->val;
   else if (pgport)
    pgport_str = pgport;
   else if (def->val)
    pgport_str = def->val;
  }

  if (opt)
   opt++;
 }

 rv = PQpingParams(keywords, values, 1);

 if (!quiet)
 {
  printf("%s:%s - ",
      pghostaddr_str != ((void*)0) ? pghostaddr_str : pghost_str,
      pgport_str);

  switch (rv)
  {
   case 131:
    printf(_("accepting connections\n"));
    break;
   case 130:
    printf(_("rejecting connections\n"));
    break;
   case 132:
    printf(_("no response\n"));
    break;
   case 133:
    printf(_("no attempt\n"));
    break;
   default:
    printf(_("unknown\n"));
  }
 }

 exit(rv);
}
