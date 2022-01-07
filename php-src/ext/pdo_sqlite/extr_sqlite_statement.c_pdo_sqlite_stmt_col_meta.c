
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_long ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {int stmt; } ;
typedef TYPE_2__ pdo_sqlite_stmt ;


 int FAILURE ;





 int SUCCESS ;
 int add_assoc_string (int *,char*,char*) ;
 int add_assoc_zval (int *,char*,int *) ;
 int add_next_index_string (int *,char*) ;
 int array_init (int *) ;
 int pdo_sqlite_error_stmt (TYPE_1__*) ;
 char* sqlite3_column_decltype (int ,scalar_t__) ;
 char* sqlite3_column_table_name (int ,scalar_t__) ;
 int sqlite3_column_type (int ,scalar_t__) ;
 scalar_t__ sqlite3_data_count (int ) ;

__attribute__((used)) static int pdo_sqlite_stmt_col_meta(pdo_stmt_t *stmt, zend_long colno, zval *return_value)
{
 pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;
 const char *str;
 zval flags;

 if (!S->stmt) {
  return FAILURE;
 }
 if(colno >= sqlite3_data_count(S->stmt)) {

  pdo_sqlite_error_stmt(stmt);
  return FAILURE;
 }

 array_init(return_value);
 array_init(&flags);

 switch (sqlite3_column_type(S->stmt, colno)) {
  case 129:
   add_assoc_string(return_value, "native_type", "null");
   break;

  case 131:
   add_assoc_string(return_value, "native_type", "double");
   break;

  case 132:
   add_next_index_string(&flags, "blob");
  case 128:
   add_assoc_string(return_value, "native_type", "string");
   break;

  case 130:
   add_assoc_string(return_value, "native_type", "integer");
   break;
 }

 str = sqlite3_column_decltype(S->stmt, colno);
 if (str) {
  add_assoc_string(return_value, "sqlite:decl_type", (char *)str);
 }
 add_assoc_zval(return_value, "flags", &flags);

 return SUCCESS;
}
