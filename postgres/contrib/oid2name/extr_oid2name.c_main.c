
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct options {char* dbname; int nodb; int quiet; TYPE_1__* filenodes; TYPE_1__* tables; TYPE_1__* oids; scalar_t__ tablespaces; } ;
struct TYPE_2__ {scalar_t__ num; scalar_t__ alloc; } ;
typedef TYPE_1__ eary ;
typedef int PGconn ;


 int PQfinish (int *) ;
 int exit (int ) ;
 int get_opts (int,char**,struct options*) ;
 scalar_t__ pg_malloc (int) ;
 int printf (char*,...) ;
 int * sql_conn (struct options*) ;
 int sql_exec_dumpalldbs (int *,struct options*) ;
 int sql_exec_dumpalltables (int *,struct options*) ;
 int sql_exec_dumpalltbspc (int *,struct options*) ;
 int sql_exec_searchtables (int *,struct options*) ;

int
main(int argc, char **argv)
{
 struct options *my_opts;
 PGconn *pgconn;

 my_opts = (struct options *) pg_malloc(sizeof(struct options));

 my_opts->oids = (eary *) pg_malloc(sizeof(eary));
 my_opts->tables = (eary *) pg_malloc(sizeof(eary));
 my_opts->filenodes = (eary *) pg_malloc(sizeof(eary));

 my_opts->oids->num = my_opts->oids->alloc = 0;
 my_opts->tables->num = my_opts->tables->alloc = 0;
 my_opts->filenodes->num = my_opts->filenodes->alloc = 0;


 get_opts(argc, argv, my_opts);

 if (my_opts->dbname == ((void*)0))
 {
  my_opts->dbname = "postgres";
  my_opts->nodb = 1;
 }
 pgconn = sql_conn(my_opts);


 if (my_opts->tablespaces)
 {
  if (!my_opts->quiet)
   printf("All tablespaces:\n");
  sql_exec_dumpalltbspc(pgconn, my_opts);

  PQfinish(pgconn);
  exit(0);
 }


 if (my_opts->oids->num > 0 ||
  my_opts->tables->num > 0 ||
  my_opts->filenodes->num > 0)
 {
  if (!my_opts->quiet)
   printf("From database \"%s\":\n", my_opts->dbname);
  sql_exec_searchtables(pgconn, my_opts);

  PQfinish(pgconn);
  exit(0);
 }


 if (my_opts->dbname && !my_opts->nodb)
 {
  if (!my_opts->quiet)
   printf("From database \"%s\":\n", my_opts->dbname);
  sql_exec_dumpalltables(pgconn, my_opts);

  PQfinish(pgconn);
  exit(0);
 }


 if (!my_opts->quiet)
  printf("All databases:\n");
 sql_exec_dumpalldbs(pgconn, my_opts);

 PQfinish(pgconn);
 return 0;
}
