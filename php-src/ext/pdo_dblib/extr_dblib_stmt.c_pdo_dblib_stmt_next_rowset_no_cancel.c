
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int column_count; int row_count; int dbh; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_3__* H; } ;
typedef TYPE_2__ pdo_dblib_stmt ;
struct TYPE_8__ {int link; scalar_t__ skip_empty_rowsets; } ;
typedef TYPE_3__ pdo_dblib_db_handle ;
typedef scalar_t__ RETCODE ;


 int DBCOUNT (int ) ;
 scalar_t__ FAIL ;
 scalar_t__ NO_MORE_RESULTS ;
 scalar_t__ SUCCEED ;
 int dbnumcols (int ) ;
 scalar_t__ dbresults (int ) ;
 int pdo_raise_impl_error (int ,TYPE_1__*,char*,char*) ;

__attribute__((used)) static int pdo_dblib_stmt_next_rowset_no_cancel(pdo_stmt_t *stmt)
{
 pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
 pdo_dblib_db_handle *H = S->H;
 RETCODE ret;
 int num_fields;

 do {
  ret = dbresults(H->link);
  num_fields = dbnumcols(H->link);
 } while (H->skip_empty_rowsets && num_fields <= 0 && ret == SUCCEED);


 if (FAIL == ret) {
  pdo_raise_impl_error(stmt->dbh, stmt, "HY000", "PDO_DBLIB: dbresults() returned FAIL");
  return 0;
 }

 if (NO_MORE_RESULTS == ret) {
  return 0;
 }

 if (H->skip_empty_rowsets && num_fields <= 0) {
  return 0;
 }

 stmt->row_count = DBCOUNT(H->link);
 stmt->column_count = num_fields;

 return 1;
}
