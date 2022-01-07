
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_4__ {int * head; int * member_1; int * member_0; } ;
typedef TYPE_1__ SimpleStringList ;


 int PG_TEXTDOMAIN (char*) ;
 int REINDEX_DATABASE ;
 int REINDEX_INDEX ;
 int REINDEX_SCHEMA ;
 int REINDEX_SYSTEM ;
 int REINDEX_TABLE ;
 int TRI_DEFAULT ;
 int TRI_NO ;
 int TRI_YES ;
 char* _ (char*) ;
 int atoi (int ) ;
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
 char* pg_strdup (int ) ;
 int reindex_all_databases (char const*,char const*,char const*,char const*,int,char const*,int,int,int,int,int) ;
 int reindex_one_database (char const*,int ,TYPE_1__*,char const*,char const*,char const*,int,char const*,int,int,int,int) ;

 int set_pglocale_pgservice (char*,int ) ;
 int setup_cancel_handler () ;
 int simple_string_list_append (TYPE_1__*,int ) ;
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
  {"schema", 128, ((void*)0), 'S'},
  {"dbname", 128, ((void*)0), 'd'},
  {"all", 129, ((void*)0), 'a'},
  {"system", 129, ((void*)0), 's'},
  {"table", 128, ((void*)0), 't'},
  {"index", 128, ((void*)0), 'i'},
  {"jobs", 128, ((void*)0), 'j'},
  {"verbose", 129, ((void*)0), 'v'},
  {"concurrently", 129, ((void*)0), 1},
  {"maintenance-db", 128, ((void*)0), 2},
  {((void*)0), 0, ((void*)0), 0}
 };

 const char *progname;
 int optindex;
 int c;

 const char *dbname = ((void*)0);
 const char *maintenance_db = ((void*)0);
 const char *host = ((void*)0);
 const char *port = ((void*)0);
 const char *username = ((void*)0);
 enum trivalue prompt_password = TRI_DEFAULT;
 bool syscatalog = 0;
 bool alldb = 0;
 bool echo = 0;
 bool quiet = 0;
 bool verbose = 0;
 bool concurrently = 0;
 SimpleStringList indexes = {((void*)0), ((void*)0)};
 SimpleStringList tables = {((void*)0), ((void*)0)};
 SimpleStringList schemas = {((void*)0), ((void*)0)};
 int concurrentCons = 1;

 pg_logging_init(argv[0]);
 progname = get_progname(argv[0]);
 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pgscripts"));

 handle_help_version_opts(argc, argv, "reindexdb", help);


 while ((c = getopt_long(argc, argv, "h:p:U:wWeqS:d:ast:i:j:v", long_options, &optindex)) != -1)
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
   case 'S':
    simple_string_list_append(&schemas, optarg);
    break;
   case 'd':
    dbname = pg_strdup(optarg);
    break;
   case 'a':
    alldb = 1;
    break;
   case 's':
    syscatalog = 1;
    break;
   case 't':
    simple_string_list_append(&tables, optarg);
    break;
   case 'i':
    simple_string_list_append(&indexes, optarg);
    break;
   case 'j':
    concurrentCons = atoi(optarg);
    if (concurrentCons <= 0)
    {
     pg_log_error("number of parallel jobs must be at least 1");
     exit(1);
    }
    break;
   case 'v':
    verbose = 1;
    break;
   case 1:
    concurrently = 1;
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
   pg_log_error("cannot reindex all databases and a specific one at the same time");
   exit(1);
  }
  if (syscatalog)
  {
   pg_log_error("cannot reindex all databases and system catalogs at the same time");
   exit(1);
  }
  if (schemas.head != ((void*)0))
  {
   pg_log_error("cannot reindex specific schema(s) in all databases");
   exit(1);
  }
  if (tables.head != ((void*)0))
  {
   pg_log_error("cannot reindex specific table(s) in all databases");
   exit(1);
  }
  if (indexes.head != ((void*)0))
  {
   pg_log_error("cannot reindex specific index(es) in all databases");
   exit(1);
  }

  reindex_all_databases(maintenance_db, host, port, username,
         prompt_password, progname, echo, quiet, verbose,
         concurrently, concurrentCons);
 }
 else if (syscatalog)
 {
  if (schemas.head != ((void*)0))
  {
   pg_log_error("cannot reindex specific schema(s) and system catalogs at the same time");
   exit(1);
  }
  if (tables.head != ((void*)0))
  {
   pg_log_error("cannot reindex specific table(s) and system catalogs at the same time");
   exit(1);
  }
  if (indexes.head != ((void*)0))
  {
   pg_log_error("cannot reindex specific index(es) and system catalogs at the same time");
   exit(1);
  }

  if (concurrentCons > 1)
  {
   pg_log_error("cannot use multiple jobs to reindex system catalogs");
   exit(1);
  }

  if (dbname == ((void*)0))
  {
   if (getenv("PGDATABASE"))
    dbname = getenv("PGDATABASE");
   else if (getenv("PGUSER"))
    dbname = getenv("PGUSER");
   else
    dbname = get_user_name_or_exit(progname);
  }

  reindex_one_database(dbname, REINDEX_SYSTEM, ((void*)0), host,
        port, username, prompt_password, progname,
        echo, verbose, concurrently, 1);
 }
 else
 {





  if (concurrentCons > 1 && indexes.head != ((void*)0))
  {
   pg_log_error("cannot use multiple jobs to reindex indexes");
   exit(1);
  }

  if (dbname == ((void*)0))
  {
   if (getenv("PGDATABASE"))
    dbname = getenv("PGDATABASE");
   else if (getenv("PGUSER"))
    dbname = getenv("PGUSER");
   else
    dbname = get_user_name_or_exit(progname);
  }

  if (schemas.head != ((void*)0))
   reindex_one_database(dbname, REINDEX_SCHEMA, &schemas, host,
         port, username, prompt_password, progname,
         echo, verbose, concurrently, concurrentCons);

  if (indexes.head != ((void*)0))
   reindex_one_database(dbname, REINDEX_INDEX, &indexes, host,
         port, username, prompt_password, progname,
         echo, verbose, concurrently, 1);

  if (tables.head != ((void*)0))
   reindex_one_database(dbname, REINDEX_TABLE, &tables, host,
         port, username, prompt_password, progname,
         echo, verbose, concurrently,
         concurrentCons);





  if (indexes.head == ((void*)0) && tables.head == ((void*)0) && schemas.head == ((void*)0))
   reindex_one_database(dbname, REINDEX_DATABASE, ((void*)0), host,
         port, username, prompt_password, progname,
         echo, verbose, concurrently, concurrentCons);
 }

 exit(0);
}
