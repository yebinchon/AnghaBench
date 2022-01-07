
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_long ;
struct TYPE_7__ {TYPE_1__* dbh; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_8__ {TYPE_4__* H; } ;
typedef TYPE_3__ pdo_dblib_stmt ;
struct TYPE_9__ {int datetime_convert; } ;
typedef TYPE_4__ pdo_dblib_db_handle ;
struct TYPE_6__ {int stringify; } ;
typedef int DBBIGINT ;
__attribute__((used)) static int pdo_dblib_stmt_should_stringify_col(pdo_stmt_t *stmt, int coltype)
{
 pdo_dblib_stmt *S = (pdo_dblib_stmt*)stmt->driver_data;
 pdo_dblib_db_handle *H = S->H;

 switch (coltype) {
  case 139:
  case 128:
  case 132:
  case 131:
  case 130:
  case 138:
  case 137:
  case 134:
  case 135:
  case 136:
  case 142:
   if (stmt->dbh->stringify) {
    return 1;
   }
   break;

  case 133:
   if (stmt->dbh->stringify) {
    return 1;
   }



   if (sizeof(zend_long) < sizeof(DBBIGINT)) {
    return 1;
   }
   break;


  case 129:

  case 140:
  case 141:
   if (H->datetime_convert) {
    return 1;
   }
   break;
 }

 return 0;
}
