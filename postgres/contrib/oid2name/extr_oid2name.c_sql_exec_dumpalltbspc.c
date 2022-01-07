
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int todo ;
struct options {int quiet; } ;
typedef int PGconn ;


 int snprintf (char*,int,char*) ;
 int sql_exec (int *,char*,int ) ;

void
sql_exec_dumpalltbspc(PGconn *conn, struct options *opts)
{
 char todo[1024];

 snprintf(todo, sizeof(todo),
    "SELECT oid AS \"Oid\", spcname as \"Tablespace Name\"\n"
    "FROM pg_catalog.pg_tablespace");

 sql_exec(conn, todo, opts->quiet);
}
