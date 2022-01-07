
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_6__ {int dbh; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_3__* H; } ;
typedef TYPE_2__ pdo_dblib_stmt ;
struct TYPE_8__ {int link; } ;
typedef TYPE_3__ pdo_dblib_db_handle ;
typedef enum pdo_fetch_orientation { ____Placeholder_pdo_fetch_orientation } pdo_fetch_orientation ;
typedef scalar_t__ RETCODE ;


 scalar_t__ FAIL ;
 scalar_t__ NO_MORE_ROWS ;
 scalar_t__ dbnextrow (int ) ;
 int pdo_raise_impl_error (int ,TYPE_1__*,char*,char*) ;

__attribute__((used)) static int pdo_dblib_stmt_fetch(pdo_stmt_t *stmt,
 enum pdo_fetch_orientation ori, zend_long offset)
{

 RETCODE ret;

 pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
 pdo_dblib_db_handle *H = S->H;

 ret = dbnextrow(H->link);

 if (FAIL == ret) {
  pdo_raise_impl_error(stmt->dbh, stmt, "HY000", "PDO_DBLIB: dbnextrow() returned FAIL");
  return 0;
 }

 if(NO_MORE_ROWS == ret) {
  return 0;
 }

 return 1;
}
