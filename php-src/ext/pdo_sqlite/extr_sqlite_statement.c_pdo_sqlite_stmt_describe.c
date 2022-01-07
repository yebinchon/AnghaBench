
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* columns; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_8__ {int stmt; } ;
typedef TYPE_3__ pdo_sqlite_stmt ;
struct TYPE_6__ {int maxlen; int param_type; scalar_t__ precision; int name; } ;


 int PDO_PARAM_STR ;





 int pdo_sqlite_error_stmt (TYPE_2__*) ;
 int sqlite3_column_count (int ) ;
 char* sqlite3_column_name (int ,int) ;
 int sqlite3_column_type (int ,int) ;
 int strlen (char const*) ;
 int zend_string_init (char const*,int ,int ) ;

__attribute__((used)) static int pdo_sqlite_stmt_describe(pdo_stmt_t *stmt, int colno)
{
 pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;
 const char *str;

 if(colno >= sqlite3_column_count(S->stmt)) {

  pdo_sqlite_error_stmt(stmt);
  return 0;
 }

 str = sqlite3_column_name(S->stmt, colno);
 stmt->columns[colno].name = zend_string_init(str, strlen(str), 0);
 stmt->columns[colno].maxlen = 0xffffffff;
 stmt->columns[colno].precision = 0;

 switch (sqlite3_column_type(S->stmt, colno)) {
  case 129:
  case 130:
  case 132:
  case 131:
  case 128:
  default:
   stmt->columns[colno].param_type = PDO_PARAM_STR;
   break;
 }

 return 1;
}
