
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int stmt; } ;
typedef TYPE_2__ pdo_sqlite_stmt ;



 int ZVAL_FALSE (int *) ;
 int ZVAL_TRUE (int *) ;
 int sqlite3_stmt_readonly (int ) ;

__attribute__((used)) static int pdo_sqlite_stmt_get_attribute(pdo_stmt_t *stmt, zend_long attr, zval *val)
{
 pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;

 switch (attr) {
  case 128:
   ZVAL_FALSE(val);






   break;

  default:
   return 0;
 }

 return 1;
}
