
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int topt; } ;
struct TYPE_4__ {TYPE_1__ popt; } ;
typedef int FILE ;


 int ClosePager (int *) ;
 char* DEFAULT_FIELD_SEP ;
 char const* DEF_PGPORT_STR ;
 int EXIT_FAILURE ;
 int * PageOutput (int,int *) ;
 char* _ (char*) ;
 int exit (int ) ;
 int fprintf (int *,char*,...) ;
 char* get_user_name (char**) ;
 char* getenv (char*) ;
 int pg_log_fatal (char*,char*) ;
 TYPE_2__ pset ;

void
usage(unsigned short int pager)
{
 const char *env;
 const char *user;
 char *errstr;
 FILE *output;


 user = getenv("PGUSER");
 if (!user)
 {
  user = get_user_name(&errstr);
  if (!user)
  {
   pg_log_fatal("%s", errstr);
   exit(EXIT_FAILURE);
  }
 }





 output = PageOutput(62, pager ? &(pset.popt.topt) : ((void*)0));

 fprintf(output, _("psql is the PostgreSQL interactive terminal.\n\n"));
 fprintf(output, _("Usage:\n"));
 fprintf(output, _("  psql [OPTION]... [DBNAME [USERNAME]]\n\n"));

 fprintf(output, _("General options:\n"));

 env = getenv("PGDATABASE");
 if (!env)
  env = user;
 fprintf(output, _("  -c, --command=COMMAND    run only single command (SQL or internal) and exit\n"));
 fprintf(output, _("  -d, --dbname=DBNAME      database name to connect to (default: \"%s\")\n"), env);
 fprintf(output, _("  -f, --file=FILENAME      execute commands from file, then exit\n"));
 fprintf(output, _("  -l, --list               list available databases, then exit\n"));
 fprintf(output, _("  -v, --set=, --variable=NAME=VALUE\n"
       "                           set psql variable NAME to VALUE\n"
       "                           (e.g., -v ON_ERROR_STOP=1)\n"));
 fprintf(output, _("  -V, --version            output version information, then exit\n"));
 fprintf(output, _("  -X, --no-psqlrc          do not read startup file (~/.psqlrc)\n"));
 fprintf(output, _("  -1 (\"one\"), --single-transaction\n"
       "                           execute as a single transaction (if non-interactive)\n"));
 fprintf(output, _("  -?, --help[=options]     show this help, then exit\n"));
 fprintf(output, _("      --help=commands      list backslash commands, then exit\n"));
 fprintf(output, _("      --help=variables     list special variables, then exit\n"));

 fprintf(output, _("\nInput and output options:\n"));
 fprintf(output, _("  -a, --echo-all           echo all input from script\n"));
 fprintf(output, _("  -b, --echo-errors        echo failed commands\n"));
 fprintf(output, _("  -e, --echo-queries       echo commands sent to server\n"));
 fprintf(output, _("  -E, --echo-hidden        display queries that internal commands generate\n"));
 fprintf(output, _("  -L, --log-file=FILENAME  send session log to file\n"));
 fprintf(output, _("  -n, --no-readline        disable enhanced command line editing (readline)\n"));
 fprintf(output, _("  -o, --output=FILENAME    send query results to file (or |pipe)\n"));
 fprintf(output, _("  -q, --quiet              run quietly (no messages, only query output)\n"));
 fprintf(output, _("  -s, --single-step        single-step mode (confirm each query)\n"));
 fprintf(output, _("  -S, --single-line        single-line mode (end of line terminates SQL command)\n"));

 fprintf(output, _("\nOutput format options:\n"));
 fprintf(output, _("  -A, --no-align           unaligned table output mode\n"));
 fprintf(output, _("      --csv                CSV (Comma-Separated Values) table output mode\n"));
 fprintf(output, _("  -F, --field-separator=STRING\n"
       "                           field separator for unaligned output (default: \"%s\")\n"),
   DEFAULT_FIELD_SEP);
 fprintf(output, _("  -H, --html               HTML table output mode\n"));
 fprintf(output, _("  -P, --pset=VAR[=ARG]     set printing option VAR to ARG (see \\pset command)\n"));
 fprintf(output, _("  -R, --record-separator=STRING\n"
       "                           record separator for unaligned output (default: newline)\n"));
 fprintf(output, _("  -t, --tuples-only        print rows only\n"));
 fprintf(output, _("  -T, --table-attr=TEXT    set HTML table tag attributes (e.g., width, border)\n"));
 fprintf(output, _("  -x, --expanded           turn on expanded table output\n"));
 fprintf(output, _("  -z, --field-separator-zero\n"
       "                           set field separator for unaligned output to zero byte\n"));
 fprintf(output, _("  -0, --record-separator-zero\n"
       "                           set record separator for unaligned output to zero byte\n"));

 fprintf(output, _("\nConnection options:\n"));

 env = getenv("PGHOST");
 fprintf(output, _("  -h, --host=HOSTNAME      database server host or socket directory (default: \"%s\")\n"),
   env ? env : _("local socket"));

 env = getenv("PGPORT");
 fprintf(output, _("  -p, --port=PORT          database server port (default: \"%s\")\n"),
   env ? env : DEF_PGPORT_STR);

 env = getenv("PGUSER");
 if (!env)
  env = user;
 fprintf(output, _("  -U, --username=USERNAME  database user name (default: \"%s\")\n"), env);
 fprintf(output, _("  -w, --no-password        never prompt for password\n"));
 fprintf(output, _("  -W, --password           force password prompt (should happen automatically)\n"));

 fprintf(output, _("\nFor more information, type \"\\?\" (for internal commands) or \"\\help\" (for SQL\n"
       "commands) from within psql, or consult the psql section in the PostgreSQL\n"
       "documentation.\n\n"));
 fprintf(output, _("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));

 ClosePager(output);
}
