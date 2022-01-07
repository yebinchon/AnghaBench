
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ zend_long ;
struct TYPE_4__ {scalar_t__ row_count; TYPE_2__* driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int stmt; } ;
typedef TYPE_2__ pdo_mysql_stmt ;


 scalar_t__ mysql_stmt_affected_rows (int ) ;

__attribute__((used)) static void pdo_mysql_stmt_set_row_count(pdo_stmt_t *stmt)
{
 zend_long row_count;
 pdo_mysql_stmt *S = stmt->driver_data;
 row_count = (zend_long) mysql_stmt_affected_rows(S->stmt);
 if (row_count != (zend_long)-1) {
  stmt->row_count = row_count;
 }
}
