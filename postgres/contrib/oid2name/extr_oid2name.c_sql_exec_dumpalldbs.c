
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
sql_exec_dumpalldbs(PGconn *conn, struct options *opts)
{
 char todo[1024];


 snprintf(todo, sizeof(todo),
    "SELECT d.oid AS \"Oid\", datname AS \"Database Name\", "
    "spcname AS \"Tablespace\" FROM pg_catalog.pg_database d JOIN pg_catalog.pg_tablespace t ON "
    "(dattablespace = t.oid) ORDER BY 2");

 sql_exec(conn, todo, opts->quiet);
}
