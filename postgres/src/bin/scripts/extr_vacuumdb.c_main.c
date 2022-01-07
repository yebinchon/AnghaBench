
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int and_analyze; int analyze_only; int freeze; int full; int verbose; int disable_page_skipping; int skip_locked; void* min_mxid_age; void* min_xid_age; } ;
typedef TYPE_1__ vacuumingOptions ;
typedef int vacopts ;
struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_9__ {int * head; int * member_1; int * member_0; } ;
typedef TYPE_2__ SimpleStringList ;


 int ANALYZE_NO_STAGE ;
 int ANALYZE_NUM_STAGES ;
 int PG_TEXTDOMAIN (char*) ;
 int TRI_DEFAULT ;
 int TRI_NO ;
 int TRI_YES ;
 char* _ (char*) ;
 void* atoi (int ) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 char* get_progname (char*) ;
 char* get_user_name_or_exit (char const*) ;
 char* getenv (char*) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int handle_help_version_opts (int,char**,char*,int ) ;
 int help ;
 int memset (TYPE_1__*,int ,int) ;

 int optarg ;
 int optind ;
 int pg_log_error (char*,...) ;
 int pg_logging_init (char*) ;
 void* pg_strdup (int ) ;

 int set_pglocale_pgservice (char*,int ) ;
 int setup_cancel_handler () ;
 int simple_string_list_append (TYPE_2__*,int ) ;
 int stderr ;
 int vacuum_all_databases (TYPE_1__*,int,char const*,char*,char*,char*,int,int,char const*,int,int) ;
 int vacuum_one_database (char const*,TYPE_1__*,int,TYPE_2__*,char*,char*,char*,int,int,char const*,int,int) ;

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
  {"analyze", 129, ((void*)0), 'z'},
  {"analyze-only", 129, ((void*)0), 'Z'},
  {"freeze", 129, ((void*)0), 'F'},
  {"all", 129, ((void*)0), 'a'},
  {"table", 128, ((void*)0), 't'},
  {"full", 129, ((void*)0), 'f'},
  {"verbose", 129, ((void*)0), 'v'},
  {"jobs", 128, ((void*)0), 'j'},
  {"maintenance-db", 128, ((void*)0), 2},
  {"analyze-in-stages", 129, ((void*)0), 3},
  {"disable-page-skipping", 129, ((void*)0), 4},
  {"skip-locked", 129, ((void*)0), 5},
  {"min-xid-age", 128, ((void*)0), 6},
  {"min-mxid-age", 128, ((void*)0), 7},
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
 vacuumingOptions vacopts;
 bool analyze_in_stages = 0;
 bool alldb = 0;
 SimpleStringList tables = {((void*)0), ((void*)0)};
 int concurrentCons = 1;
 int tbl_count = 0;


 memset(&vacopts, 0, sizeof(vacopts));

 pg_logging_init(argv[0]);
 progname = get_progname(argv[0]);
 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pgscripts"));

 handle_help_version_opts(argc, argv, "vacuumdb", help);

 while ((c = getopt_long(argc, argv, "h:p:U:wWeqd:zZFat:fvj:", long_options, &optindex)) != -1)
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
   case 'z':
    vacopts.and_analyze = 1;
    break;
   case 'Z':
    vacopts.analyze_only = 1;
    break;
   case 'F':
    vacopts.freeze = 1;
    break;
   case 'a':
    alldb = 1;
    break;
   case 't':
    {
     simple_string_list_append(&tables, optarg);
     tbl_count++;
     break;
    }
   case 'f':
    vacopts.full = 1;
    break;
   case 'v':
    vacopts.verbose = 1;
    break;
   case 'j':
    concurrentCons = atoi(optarg);
    if (concurrentCons <= 0)
    {
     pg_log_error("number of parallel jobs must be at least 1");
     exit(1);
    }
    break;
   case 2:
    maintenance_db = pg_strdup(optarg);
    break;
   case 3:
    analyze_in_stages = vacopts.analyze_only = 1;
    break;
   case 4:
    vacopts.disable_page_skipping = 1;
    break;
   case 5:
    vacopts.skip_locked = 1;
    break;
   case 6:
    vacopts.min_xid_age = atoi(optarg);
    if (vacopts.min_xid_age <= 0)
    {
     pg_log_error("minimum transaction ID age must be at least 1");
     exit(1);
    }
    break;
   case 7:
    vacopts.min_mxid_age = atoi(optarg);
    if (vacopts.min_mxid_age <= 0)
    {
     pg_log_error("minimum multixact ID age must be at least 1");
     exit(1);
    }
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

 if (vacopts.analyze_only)
 {
  if (vacopts.full)
  {
   pg_log_error("cannot use the \"%s\" option when performing only analyze",
       "full");
   exit(1);
  }
  if (vacopts.freeze)
  {
   pg_log_error("cannot use the \"%s\" option when performing only analyze",
       "freeze");
   exit(1);
  }
  if (vacopts.disable_page_skipping)
  {
   pg_log_error("cannot use the \"%s\" option when performing only analyze",
       "disable-page-skipping");
   exit(1);
  }

 }

 setup_cancel_handler();


 if (tbl_count && (concurrentCons > tbl_count))
  concurrentCons = tbl_count;

 if (alldb)
 {
  if (dbname)
  {
   pg_log_error("cannot vacuum all databases and a specific one at the same time");
   exit(1);
  }
  if (tables.head != ((void*)0))
  {
   pg_log_error("cannot vacuum specific table(s) in all databases");
   exit(1);
  }

  vacuum_all_databases(&vacopts,
        analyze_in_stages,
        maintenance_db,
        host, port, username, prompt_password,
        concurrentCons,
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

  if (analyze_in_stages)
  {
   int stage;

   for (stage = 0; stage < ANALYZE_NUM_STAGES; stage++)
   {
    vacuum_one_database(dbname, &vacopts,
         stage,
         &tables,
         host, port, username, prompt_password,
         concurrentCons,
         progname, echo, quiet);
   }
  }
  else
   vacuum_one_database(dbname, &vacopts,
        ANALYZE_NO_STAGE,
        &tables,
        host, port, username, prompt_password,
        concurrentCons,
        progname, echo, quiet);
 }

 exit(0);
}
