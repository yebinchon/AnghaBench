
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ pdo_sqlite_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;




 int sqlite3_busy_timeout (int ,int) ;
 int sqlite3_extended_result_codes (int ,int) ;
 int zval_get_long (int *) ;

__attribute__((used)) static int pdo_sqlite_set_attr(pdo_dbh_t *dbh, zend_long attr, zval *val)
{
 pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;

 switch (attr) {
  case 129:
   sqlite3_busy_timeout(H->db, zval_get_long(val) * 1000);
   return 1;
  case 128:
   sqlite3_extended_result_codes(H->db, zval_get_long(val));
   return 1;
 }
 return 0;
}
