
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int narray; TYPE_2__** array; } ;
typedef TYPE_1__ filemap_t ;
struct TYPE_7__ {int action; int newsize; int oldsize; int path; int pagemap; } ;
typedef TYPE_2__ file_entry_t ;
typedef int PGresult ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_COPY_IN ;
 int PQclear (int *) ;
 int PQerrorMessage (int ) ;
 int * PQexec (int ,char const*) ;
 int * PQgetResult (int ) ;
 int PQputCopyEnd (int ,int *) ;
 int PQresultErrorMessage (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int conn ;
 int create_target (TYPE_2__*) ;
 int execute_pagemap (int *,int ) ;
 int fetch_file_range (int ,int ,int ) ;
 int open_target_file (int ,int) ;
 int pg_fatal (char*,int ) ;
 int receiveFileChunks (char const*) ;
 int remove_target (TYPE_2__*) ;
 int run_simple_command (char const*) ;
 int truncate_target_file (int ,int ) ;

void
libpq_executeFileMap(filemap_t *map)
{
 file_entry_t *entry;
 const char *sql;
 PGresult *res;
 int i;





 sql = "CREATE TEMPORARY TABLE fetchchunks(path text, begin int8, len int4);";
 run_simple_command(sql);

 sql = "COPY fetchchunks FROM STDIN";
 res = PQexec(conn, sql);

 if (PQresultStatus(res) != PGRES_COPY_IN)
  pg_fatal("could not send file list: %s",
     PQresultErrorMessage(res));
 PQclear(res);

 for (i = 0; i < map->narray; i++)
 {
  entry = map->array[i];


  execute_pagemap(&entry->pagemap, entry->path);

  switch (entry->action)
  {
   case 130:

    break;

   case 133:

    open_target_file(entry->path, 1);
    fetch_file_range(entry->path, 0, entry->newsize);
    break;

   case 128:
    truncate_target_file(entry->path, entry->newsize);
    break;

   case 132:
    fetch_file_range(entry->path, entry->oldsize, entry->newsize);
    break;

   case 129:
    remove_target(entry);
    break;

   case 131:
    create_target(entry);
    break;
  }
 }

 if (PQputCopyEnd(conn, ((void*)0)) != 1)
  pg_fatal("could not send end-of-COPY: %s",
     PQerrorMessage(conn));

 while ((res = PQgetResult(conn)) != ((void*)0))
 {
  if (PQresultStatus(res) != PGRES_COMMAND_OK)
   pg_fatal("unexpected result while sending file list: %s",
      PQresultErrorMessage(res));
  PQclear(res);
 }





 sql =
  "SELECT path, begin,\n"
  "  pg_read_binary_file(path, begin, len, true) AS chunk\n"
  "FROM fetchchunks\n";

 receiveFileChunks(sql);
}
