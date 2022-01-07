
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_5__ {TYPE_1__* head; int * member_1; int * member_0; } ;
struct TYPE_4__ {int * val; struct TYPE_4__* next; } ;
typedef TYPE_1__ SimpleStringListCell ;
typedef TYPE_2__ SimpleStringList ;


 int PG_TEXTDOMAIN (char*) ;
 int TRI_DEFAULT ;
 int TRI_NO ;
 int TRI_YES ;
 char* _ (char*) ;
 int cluster_all_databases (int,char const*,char*,char*,char*,int,char const*,int,int) ;
 int cluster_one_database (char const*,int,int *,char*,char*,char*,int,char const*,int) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 char* get_progname (char*) ;
 char* get_user_name_or_exit (char const*) ;
 char* getenv (char*) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int handle_help_version_opts (int,char**,char*,int ) ;
 int help ;

 int optarg ;
 int optind ;
 int pg_log_error (char*,...) ;
 int pg_logging_init (char*) ;
 void* pg_strdup (int ) ;

 int set_pglocale_pgservice (char*,int ) ;
 int setup_cancel_handler () ;
 int simple_string_list_append (TYPE_2__*,int ) ;
 int stderr ;

int
main(int argc, char *argv[])
{
 static struct option long_options[] = {
  {"host", 128, ((void*)0), 'h'},
  {"port", 128, ((void*)0), 'p'},
  {"username", 128, ((void*)0), 'U'},
  {"no-password", 129, ((void*)0), 'w'},
  {"password", 129, ((void*)0), 'W'},
  {"echo", 129, ((void*)0), 'e'},
  {"quiet", 129, ((void*)0), 'q'},
  {"dbname", 128, ((void*)0), 'd'},
  {"all", 129, ((void*)0), 'a'},
  {"table", 128, ((void*)0), 't'},
  {"verbose", 129, ((void*)0), 'v'},
  {"maintenance-db", 128, ((void*)0), 2},
  {((void*)0), 0, ((void*)0), 0}
 };

 const char *progname;
 int optindex;
 int c;

 const char *dbname = ((void*)0);
 const char *maintenance_db = ((void*)0);
 char *host = ((void*)0);
 char *port = ((void*)0);
 char *username = ((void*)0);
 enum trivalue prompt_password = TRI_DEFAULT;
 bool echo = 0;
 bool quiet = 0;
 bool alldb = 0;
 bool verbose = 0;
 SimpleStringList tables = {((void*)0), ((void*)0)};

 pg_logging_init(argv[0]);
 progname = get_progname(argv[0]);
 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pgscripts"));

 handle_help_version_opts(argc, argv, "clusterdb", help);

 while ((c = getopt_long(argc, argv, "h:p:U:wWeqd:at:v", long_options, &optindex)) != -1)
 {
  switch (c)
  {
   case 'h':
    host = pg_strdup(optarg);
    break;
   case 'p':
    port = pg_strdup(optarg);
    break;
   case 'U':
    username = pg_strdup(optarg);
    break;
   case 'w':
    prompt_password = TRI_NO;
    break;
   case 'W':
    prompt_password = TRI_YES;
    break;
   case 'e':
    echo = 1;
    break;
   case 'q':
    quiet = 1;
    break;
   case 'd':
    dbname = pg_strdup(optarg);
    break;
   case 'a':
    alldb = 1;
    break;
   case 't':
    simple_string_list_append(&tables, optarg);
    break;
   case 'v':
    verbose = 1;
    break;
   case 2:
    maintenance_db = pg_strdup(optarg);
    break;
   default:
    fprintf(stderr, _("Try \"%s --help\" for more information.\n"), progname);
    exit(1);
  }
 }





 if (optind < argc && dbname == ((void*)0))
 {
  dbname = argv[optind];
  optind++;
 }

 if (optind < argc)
 {
  pg_log_error("too many command-line arguments (first is \"%s\")",
      argv[optind]);
  fprintf(stderr, _("Try \"%s --help\" for more information.\n"), progname);
  exit(1);
 }

 setup_cancel_handler();

 if (alldb)
 {
  if (dbname)
  {
   pg_log_error("cannot cluster all databases and a specific one at the same time");
   exit(1);
  }

  if (tables.head != ((void*)0))
  {
   pg_log_error("cannot cluster specific table(s) in all databases");
   exit(1);
  }

  cluster_all_databases(verbose, maintenance_db, host, port, username, prompt_password,
         progname, echo, quiet);
 }
 else
 {
  if (dbname == ((void*)0))
  {
   if (getenv("PGDATABASE"))
    dbname = getenv("PGDATABASE");
   else if (getenv("PGUSER"))
    dbname = getenv("PGUSER");
   else
    dbname = get_user_name_or_exit(progname);
  }

  if (tables.head != ((void*)0))
  {
   SimpleStringListCell *cell;

   for (cell = tables.head; cell; cell = cell->next)
   {
    cluster_one_database(dbname, verbose, cell->val,
          host, port, username, prompt_password,
          progname, echo);
   }
  }
  else
   cluster_one_database(dbname, verbose, ((void*)0),
         host, port, username, prompt_password,
         progname, echo);
 }

 exit(0);
}
