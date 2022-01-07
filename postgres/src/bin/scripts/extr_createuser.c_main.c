
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;
typedef int pw2 ;
typedef int newuser_buf ;
typedef int newpassword_buf ;
typedef enum trivalue { ____Placeholder_trivalue } trivalue ;
struct TYPE_13__ {char* data; } ;
struct TYPE_12__ {TYPE_1__* head; int * member_1; int * member_0; } ;
struct TYPE_11__ {char const* val; struct TYPE_11__* next; } ;
typedef TYPE_1__ SimpleStringListCell ;
typedef TYPE_2__ SimpleStringList ;
typedef TYPE_3__ PQExpBufferData ;
typedef int PGresult ;
typedef int PGconn ;


 scalar_t__ PGRES_COMMAND_OK ;
 int PG_TEXTDOMAIN (char*) ;
 int PQclear (int *) ;
 char* PQencryptPasswordConn (int *,char*,char const*,int *) ;
 char* PQerrorMessage (int *) ;
 int * PQexec (int *,char*) ;
 int PQfinish (int *) ;
 int PQfreemem (char*) ;
 scalar_t__ PQresultStatus (int *) ;
 int TRI_DEFAULT ;
 int TRI_NO ;
 int TRI_YES ;
 char* _ (char*) ;
 int appendPQExpBuffer (TYPE_3__*,char*,char*) ;
 int appendPQExpBufferChar (TYPE_3__*,char) ;
 int appendPQExpBufferStr (TYPE_3__*,char*) ;
 int appendStringLiteralConn (TYPE_3__*,char*,int *) ;
 int * connectDatabase (char*,char*,char*,char*,int,char const*,int,int,int) ;
 int exit (int) ;
 char* fmtId (char const*) ;
 int fprintf (int ,char*,...) ;
 char* get_progname (char*) ;
 char* get_user_name_or_exit (char const*) ;
 char* getenv (char*) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int handle_help_version_opts (int,char**,char*,int ) ;
 int help ;
 int initPQExpBuffer (TYPE_3__*) ;

 int optarg ;
 int optind ;
 int pg_log_error (char*,char*) ;
 int pg_logging_init (char*) ;
 char* pg_strdup (int ) ;
 int printf (char*,char*) ;
 int printfPQExpBuffer (TYPE_3__*,char*,char*) ;

 int set_pglocale_pgservice (char*,int ) ;
 int simple_prompt (char*,char*,int,int) ;
 int simple_string_list_append (TYPE_2__*,int ) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ yesno_prompt (char*) ;

int
main(int argc, char *argv[])
{
 static struct option long_options[] = {
  {"host", 128, ((void*)0), 'h'},
  {"port", 128, ((void*)0), 'p'},
  {"username", 128, ((void*)0), 'U'},
  {"role", 128, ((void*)0), 'g'},
  {"no-password", 129, ((void*)0), 'w'},
  {"password", 129, ((void*)0), 'W'},
  {"echo", 129, ((void*)0), 'e'},
  {"createdb", 129, ((void*)0), 'd'},
  {"no-createdb", 129, ((void*)0), 'D'},
  {"superuser", 129, ((void*)0), 's'},
  {"no-superuser", 129, ((void*)0), 'S'},
  {"createrole", 129, ((void*)0), 'r'},
  {"no-createrole", 129, ((void*)0), 'R'},
  {"inherit", 129, ((void*)0), 'i'},
  {"no-inherit", 129, ((void*)0), 'I'},
  {"login", 129, ((void*)0), 'l'},
  {"no-login", 129, ((void*)0), 'L'},
  {"replication", 129, ((void*)0), 1},
  {"no-replication", 129, ((void*)0), 2},
  {"interactive", 129, ((void*)0), 3},
  {"connection-limit", 128, ((void*)0), 'c'},
  {"pwprompt", 129, ((void*)0), 'P'},
  {"encrypted", 129, ((void*)0), 'E'},
  {((void*)0), 0, ((void*)0), 0}
 };

 const char *progname;
 int optindex;
 int c;
 const char *newuser = ((void*)0);
 char *host = ((void*)0);
 char *port = ((void*)0);
 char *username = ((void*)0);
 SimpleStringList roles = {((void*)0), ((void*)0)};
 enum trivalue prompt_password = TRI_DEFAULT;
 bool echo = 0;
 bool interactive = 0;
 char *conn_limit = ((void*)0);
 bool pwprompt = 0;
 char *newpassword = ((void*)0);
 char newuser_buf[128];
 char newpassword_buf[100];


 enum trivalue createdb = TRI_DEFAULT,
    superuser = TRI_DEFAULT,
    createrole = TRI_DEFAULT,
    inherit = TRI_DEFAULT,
    login = TRI_DEFAULT,
    replication = TRI_DEFAULT;

 PQExpBufferData sql;

 PGconn *conn;
 PGresult *result;

 pg_logging_init(argv[0]);
 progname = get_progname(argv[0]);
 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pgscripts"));

 handle_help_version_opts(argc, argv, "createuser", help);

 while ((c = getopt_long(argc, argv, "h:p:U:g:wWedDsSrRiIlLc:PE",
       long_options, &optindex)) != -1)
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
   case 'g':
    simple_string_list_append(&roles, optarg);
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
   case 'd':
    createdb = TRI_YES;
    break;
   case 'D':
    createdb = TRI_NO;
    break;
   case 's':
    superuser = TRI_YES;
    break;
   case 'S':
    superuser = TRI_NO;
    break;
   case 'r':
    createrole = TRI_YES;
    break;
   case 'R':
    createrole = TRI_NO;
    break;
   case 'i':
    inherit = TRI_YES;
    break;
   case 'I':
    inherit = TRI_NO;
    break;
   case 'l':
    login = TRI_YES;
    break;
   case 'L':
    login = TRI_NO;
    break;
   case 'c':
    conn_limit = pg_strdup(optarg);
    break;
   case 'P':
    pwprompt = 1;
    break;
   case 'E':

    break;
   case 1:
    replication = TRI_YES;
    break;
   case 2:
    replication = TRI_NO;
    break;
   case 3:
    interactive = 1;
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
   newuser = argv[optind];
   break;
  default:
   pg_log_error("too many command-line arguments (first is \"%s\")",
       argv[optind + 1]);
   fprintf(stderr, _("Try \"%s --help\" for more information.\n"), progname);
   exit(1);
 }

 if (newuser == ((void*)0))
 {
  if (interactive)
  {
   simple_prompt("Enter name of role to add: ",
        newuser_buf, sizeof(newuser_buf), 1);
   newuser = newuser_buf;
  }
  else
  {
   if (getenv("PGUSER"))
    newuser = getenv("PGUSER");
   else
    newuser = get_user_name_or_exit(progname);
  }
 }

 if (pwprompt)
 {
  char pw2[100];

  simple_prompt("Enter password for new role: ",
       newpassword_buf, sizeof(newpassword_buf), 0);
  simple_prompt("Enter it again: ", pw2, sizeof(pw2), 0);
  if (strcmp(newpassword_buf, pw2) != 0)
  {
   fprintf(stderr, _("Passwords didn't match.\n"));
   exit(1);
  }
  newpassword = newpassword_buf;
 }

 if (superuser == 0)
 {
  if (interactive && yesno_prompt("Shall the new role be a superuser?"))
   superuser = TRI_YES;
  else
   superuser = TRI_NO;
 }

 if (superuser == TRI_YES)
 {

  createdb = TRI_YES;
  createrole = TRI_YES;
 }

 if (createdb == 0)
 {
  if (interactive && yesno_prompt("Shall the new role be allowed to create databases?"))
   createdb = TRI_YES;
  else
   createdb = TRI_NO;
 }

 if (createrole == 0)
 {
  if (interactive && yesno_prompt("Shall the new role be allowed to create more new roles?"))
   createrole = TRI_YES;
  else
   createrole = TRI_NO;
 }

 if (inherit == 0)
  inherit = TRI_YES;

 if (login == 0)
  login = TRI_YES;

 conn = connectDatabase("postgres", host, port, username, prompt_password,
         progname, echo, 0, 0);

 initPQExpBuffer(&sql);

 printfPQExpBuffer(&sql, "CREATE ROLE %s", fmtId(newuser));
 if (newpassword)
 {
  char *encrypted_password;

  appendPQExpBufferStr(&sql, " PASSWORD ");

  encrypted_password = PQencryptPasswordConn(conn,
               newpassword,
               newuser,
               ((void*)0));
  if (!encrypted_password)
  {
   pg_log_error("password encryption failed: %s",
       PQerrorMessage(conn));
   exit(1);
  }
  appendStringLiteralConn(&sql, encrypted_password, conn);
  PQfreemem(encrypted_password);
 }
 if (superuser == TRI_YES)
  appendPQExpBufferStr(&sql, " SUPERUSER");
 if (superuser == TRI_NO)
  appendPQExpBufferStr(&sql, " NOSUPERUSER");
 if (createdb == TRI_YES)
  appendPQExpBufferStr(&sql, " CREATEDB");
 if (createdb == TRI_NO)
  appendPQExpBufferStr(&sql, " NOCREATEDB");
 if (createrole == TRI_YES)
  appendPQExpBufferStr(&sql, " CREATEROLE");
 if (createrole == TRI_NO)
  appendPQExpBufferStr(&sql, " NOCREATEROLE");
 if (inherit == TRI_YES)
  appendPQExpBufferStr(&sql, " INHERIT");
 if (inherit == TRI_NO)
  appendPQExpBufferStr(&sql, " NOINHERIT");
 if (login == TRI_YES)
  appendPQExpBufferStr(&sql, " LOGIN");
 if (login == TRI_NO)
  appendPQExpBufferStr(&sql, " NOLOGIN");
 if (replication == TRI_YES)
  appendPQExpBufferStr(&sql, " REPLICATION");
 if (replication == TRI_NO)
  appendPQExpBufferStr(&sql, " NOREPLICATION");
 if (conn_limit != ((void*)0))
  appendPQExpBuffer(&sql, " CONNECTION LIMIT %s", conn_limit);
 if (roles.head != ((void*)0))
 {
  SimpleStringListCell *cell;

  appendPQExpBufferStr(&sql, " IN ROLE ");

  for (cell = roles.head; cell; cell = cell->next)
  {
   if (cell->next)
    appendPQExpBuffer(&sql, "%s,", fmtId(cell->val));
   else
    appendPQExpBufferStr(&sql, fmtId(cell->val));
  }
 }
 appendPQExpBufferChar(&sql, ';');

 if (echo)
  printf("%s\n", sql.data);
 result = PQexec(conn, sql.data);

 if (PQresultStatus(result) != PGRES_COMMAND_OK)
 {
  pg_log_error("creation of new role failed: %s", PQerrorMessage(conn));
  PQfinish(conn);
  exit(1);
 }

 PQclear(result);
 PQfinish(conn);
 exit(0);
}
