
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
typedef void* zend_bool ;
struct TYPE_4__ {void* disable_prepares; void* emulate_prepares; } ;
typedef TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;




 scalar_t__ zval_get_long (int *) ;

__attribute__((used)) static int pdo_pgsql_set_attr(pdo_dbh_t *dbh, zend_long attr, zval *val)
{
 zend_bool bval = zval_get_long(val)? 1 : 0;
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;

 switch (attr) {
  case 129:
   H->emulate_prepares = bval;
   return 1;
  case 128:
   H->disable_prepares = bval;
   return 1;
  default:
   return 0;
 }
}
