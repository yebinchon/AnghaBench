
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {int done; int stmt; scalar_t__ pre_fetched; } ;
typedef TYPE_2__ pdo_sqlite_stmt ;
typedef enum pdo_fetch_orientation { ____Placeholder_pdo_fetch_orientation } pdo_fetch_orientation ;





 int pdo_sqlite_error_stmt (TYPE_1__*) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int pdo_sqlite_stmt_fetch(pdo_stmt_t *stmt,
 enum pdo_fetch_orientation ori, zend_long offset)
{
 pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;
 int i;
 if (!S->stmt) {
  return 0;
 }
 if (S->pre_fetched) {
  S->pre_fetched = 0;
  return 1;
 }
 if (S->done) {
  return 0;
 }
 i = sqlite3_step(S->stmt);
 switch (i) {
  case 128:
   return 1;

  case 130:
   S->done = 1;
   sqlite3_reset(S->stmt);
   return 0;

  case 129:
   sqlite3_reset(S->stmt);
  default:
   pdo_sqlite_error_stmt(stmt);
   return 0;
 }
}
