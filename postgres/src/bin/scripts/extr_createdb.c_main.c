
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PG_TEXTDOMAIN (char*) ;
 int PQclear (int *) ;
 char* PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 int PQfinish (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int TRI_DEFAULT ;
 int TRI_NO ;
 int TRI_YES ;
 char* _ (char*) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char*) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendStringLiteralConn (TYPE_1__*,char*,int *) ;
 int * connectMaintenanceDatabase (char const*,char*,char*,char*,int,char const*,int) ;
 int exit (int) ;
 char* fmtId (char const*) ;
 int fprintf (int ,char*,char const*) ;
 char* get_progname (char*) ;
 char* get_user_name_or_exit (char const*) ;
 char* getenv (char*) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int handle_help_version_opts (int,char**,char*,int ) ;
 int help ;
 int initPQExpBuffer (TYPE_1__*) ;

 int optarg ;
 int optind ;
 scalar_t__ pg_char_to_encoding (char*) ;
 int pg_log_error (char*,...) ;
 int pg_logging_init (char*) ;
 void* pg_strdup (int ) ;
 int printf (char*,char*) ;
 int printfPQExpBuffer (TYPE_1__*,char*,char*) ;

 int set_pglocale_pgservice (char*,int ) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;

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
  {"owner", 128, ((void*)0), 'O'},
  {"tablespace", 128, ((void*)0), 'D'},
  {"template", 128, ((void*)0), 'T'},
  {"encoding", 128, ((void*)0), 'E'},
  {"lc-collate", 128, ((void*)0), 1},
  {"lc-ctype", 128, ((void*)0), 2},
  {"locale", 128, ((void*)0), 'l'},
  {"maintenance-db", 128, ((void*)0), 3},
  {((void*)0), 0, ((void*)0), 0}
 };

 const char *progname;
 int optindex;
 int c;

 const char *dbname = ((void*)0);
 const char *maintenance_db = ((void*)0);
 char *comment = ((void*)0);
 char *host = ((void*)0);
 char *port = ((void*)0);
 char *username = ((void*)0);
 enum trivalue prompt_password = TRI_DEFAULT;
 bool echo = 0;
 char *owner = ((void*)0);
 char *tablespace = ((void*)0);
 char *template = ((void*)0);
 char *encoding = ((void*)0);
 char *lc_collate = ((void*)0);
 char *lc_ctype = ((void*)0);
 char *locale = ((void*)0);

 PQExpBufferData sql;

 PGconn *conn;
 PGresult *result;

 pg_logging_init(argv[0]);
 progname = get_progname(argv[0]);
 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pgscripts"));

 handle_help_version_opts(argc, argv, "createdb", help);

 while ((c = getopt_long(argc, argv, "h:p:U:wWeO:D:T:E:l:", long_options, &optindex)) != -1)
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
   case 'O':
    owner = pg_strdup(optarg);
    break;
   case 'D':
    tablespace = pg_strdup(optarg);
    break;
   case 'T':
    template = pg_strdup(optarg);
    break;
   case 'E':
    encoding = pg_strdup(optarg);
    break;
   case 1:
    lc_collate = pg_strdup(optarg);
    break;
   case 2:
    lc_ctype = pg_strdup(optarg);
    break;
   case 'l':
    locale = pg_strdup(optarg);
    break;
   case 3:
    maintenance_db = pg_strdup(optarg);
    break;
   default:
    fprintf(stderr, _("Try \"%s --help\" for more information.\n"), progname);
    exit(1);
  }
 }

 switch (argc - optind)
 {
  case 0:
   break;
  case 1:
   dbname = argv[optind];
   break;
  case 2:
   dbname = argv[optind];
   comment = argv[optind + 1];
   break;
  default:
   pg_log_error("too many command-line arguments (first is \"%s\")",
       argv[optind + 2]);
   fprintf(stderr, _("Try \"%s --help\" for more information.\n"), progname);
   exit(1);
 }

 if (locale)
 {
  if (lc_ctype)
  {
   pg_log_error("only one of --locale and --lc-ctype can be specified");
   exit(1);
  }
  if (lc_collate)
  {
   pg_log_error("only one of --locale and --lc-collate can be specified");
   exit(1);
  }
  lc_ctype = locale;
  lc_collate = locale;
 }

 if (encoding)
 {
  if (pg_char_to_encoding(encoding) < 0)
  {
   pg_log_error("\"%s\" is not a valid encoding name", encoding);
   exit(1);
  }
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

 initPQExpBuffer(&sql);

 appendPQExpBuffer(&sql, "CREATE DATABASE %s",
       fmtId(dbname));

 if (owner)
  appendPQExpBuffer(&sql, " OWNER %s", fmtId(owner));
 if (tablespace)
  appendPQExpBuffer(&sql, " TABLESPACE %s", fmtId(tablespace));
 if (encoding)
  appendPQExpBuffer(&sql, " ENCODING '%s'", encoding);
 if (template)
  appendPQExpBuffer(&sql, " TEMPLATE %s", fmtId(template));
 if (lc_collate)
  appendPQExpBuffer(&sql, " LC_COLLATE '%s'", lc_collate);
 if (lc_ctype)
  appendPQExpBuffer(&sql, " LC_CTYPE '%s'", lc_ctype);

 appendPQExpBufferChar(&sql, ';');


 if (maintenance_db == ((void*)0) && strcmp(dbname, "postgres") == 0)
  maintenance_db = "template1";

 conn = connectMaintenanceDatabase(maintenance_db, host, port, username,
           prompt_password, progname, echo);

 if (echo)
  printf("%s\n", sql.data);
 result = PQexec(conn, sql.data);

 if (PQresultStatus(result) != PGRES_COMMAND_OK)
 {
  pg_log_error("database creation failed: %s", PQerrorMessage(conn));
  PQfinish(conn);
  exit(1);
 }

 PQclear(result);

 if (comment)
 {
  printfPQExpBuffer(&sql, "COMMENT ON DATABASE %s IS ", fmtId(dbname));
  appendStringLiteralConn(&sql, comment, conn);
  appendPQExpBufferChar(&sql, ';');

  if (echo)
   printf("%s\n", sql.data);
  result = PQexec(conn, sql.data);

  if (PQresultStatus(result) != PGRES_COMMAND_OK)
  {
   pg_log_error("comment creation failed (database was created): %s",
       PQerrorMessage(conn));
   PQfinish(conn);
   exit(1);
  }

  PQclear(result);
 }

 PQfinish(conn);

 exit(0);
}
