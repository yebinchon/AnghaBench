
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;







 int ZEND_LONG_MAX ;
 int ZEND_LONG_MIN ;
 int ZVAL_DOUBLE (int *,int ) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,char*) ;
 int ZVAL_STRINGL (int *,char*,int ) ;
 scalar_t__ sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_double (int *,int) ;
 int sqlite3_column_int64 (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_column_type (int *,int) ;

__attribute__((used)) static void sqlite_value_to_zval(sqlite3_stmt *stmt, int column, zval *data)
{
 sqlite3_int64 val;

 switch (sqlite3_column_type(stmt, column)) {
  case 129:
   val = sqlite3_column_int64(stmt, column);

   if (val > ZEND_LONG_MAX || val < ZEND_LONG_MIN) {
    ZVAL_STRINGL(data, (char *)sqlite3_column_text(stmt, column), sqlite3_column_bytes(stmt, column));
   } else {

    ZVAL_LONG(data, (zend_long) val);

   }

   break;

  case 130:
   ZVAL_DOUBLE(data, sqlite3_column_double(stmt, column));
   break;

  case 128:
   ZVAL_NULL(data);
   break;

  case 132:
   ZVAL_STRING(data, (char*)sqlite3_column_text(stmt, column));
   break;

  case 131:
  default:
   ZVAL_STRINGL(data, (char*)sqlite3_column_blob(stmt, column), sqlite3_column_bytes(stmt, column));
 }
}
