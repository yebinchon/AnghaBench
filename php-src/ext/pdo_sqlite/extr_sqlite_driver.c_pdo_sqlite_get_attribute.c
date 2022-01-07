
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef int pdo_dbh_t ;




 int ZVAL_STRING (int *,char*) ;
 scalar_t__ sqlite3_libversion () ;

__attribute__((used)) static int pdo_sqlite_get_attribute(pdo_dbh_t *dbh, zend_long attr, zval *return_value)
{
 switch (attr) {
  case 129:
  case 128:
   ZVAL_STRING(return_value, (char *)sqlite3_libversion());
   break;

  default:
   return 0;
 }

 return 1;
}
