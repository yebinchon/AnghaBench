
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int row_count; scalar_t__ executed; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_9__ {int done; int pre_fetched; int stmt; TYPE_1__* H; } ;
typedef TYPE_3__ pdo_sqlite_stmt ;
struct TYPE_7__ {int db; } ;







 int pdo_sqlite_error_stmt (TYPE_2__*) ;
 int pdo_sqlite_stmt_set_column_count (TYPE_2__*,int ) ;
 int sqlite3_changes (int ) ;
 int sqlite3_column_count (int ) ;
 int sqlite3_data_count (int ) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int pdo_sqlite_stmt_execute(pdo_stmt_t *stmt)
{
 pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;

 if (stmt->executed && !S->done) {
  sqlite3_reset(S->stmt);
 }

 S->done = 0;
 switch (sqlite3_step(S->stmt)) {
  case 128:
   S->pre_fetched = 1;
   pdo_sqlite_stmt_set_column_count(stmt, sqlite3_data_count(S->stmt));
   return 1;

  case 131:
   pdo_sqlite_stmt_set_column_count(stmt, sqlite3_column_count(S->stmt));
   stmt->row_count = sqlite3_changes(S->H->db);
   sqlite3_reset(S->stmt);
   S->done = 1;
   return 1;

  case 130:
   sqlite3_reset(S->stmt);
  case 129:
  case 132:
  default:
   pdo_sqlite_error_stmt(stmt);
   return 0;
 }
}
