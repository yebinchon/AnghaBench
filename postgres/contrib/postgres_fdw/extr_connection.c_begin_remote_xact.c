
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sql ;
struct TYPE_3__ {int xact_depth; int changing_xact_state; int conn; } ;
typedef TYPE_1__ ConnCacheEntry ;


 int DEBUG3 ;
 int GetCurrentTransactionNestLevel () ;
 scalar_t__ IsolationIsSerializable () ;
 int do_sql_command (int ,char const*) ;
 int elog (int ,char*,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
begin_remote_xact(ConnCacheEntry *entry)
{
 int curlevel = GetCurrentTransactionNestLevel();


 if (entry->xact_depth <= 0)
 {
  const char *sql;

  elog(DEBUG3, "starting remote transaction on connection %p",
    entry->conn);

  if (IsolationIsSerializable())
   sql = "START TRANSACTION ISOLATION LEVEL SERIALIZABLE";
  else
   sql = "START TRANSACTION ISOLATION LEVEL REPEATABLE READ";
  entry->changing_xact_state = 1;
  do_sql_command(entry->conn, sql);
  entry->xact_depth = 1;
  entry->changing_xact_state = 0;
 }






 while (entry->xact_depth < curlevel)
 {
  char sql[64];

  snprintf(sql, sizeof(sql), "SAVEPOINT s%d", entry->xact_depth + 1);
  entry->changing_xact_state = 1;
  do_sql_command(entry->conn, sql);
  entry->xact_depth++;
  entry->changing_xact_state = 0;
 }
}
