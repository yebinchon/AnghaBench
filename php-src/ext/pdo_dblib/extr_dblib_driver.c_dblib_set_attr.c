
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {int assume_national_character_set_strings; void* datetime_convert; int skip_empty_rowsets; void* stringify_uniqueidentifier; } ;
typedef TYPE_1__ pdo_dblib_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
 void* PDO_PARAM_STR_NATL ;
 int SUCCEED ;
 int dbsettime (void*) ;
 void* zval_get_long (int *) ;
 int zval_is_true (int *) ;

__attribute__((used)) static int dblib_set_attr(pdo_dbh_t *dbh, zend_long attr, zval *val)
{
 pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;

 switch(attr) {
  case 133:
   H->assume_national_character_set_strings = zval_get_long(val) == PDO_PARAM_STR_NATL ? 1 : 0;
   return 1;
  case 132:
  case 130:
   return SUCCEED == dbsettime(zval_get_long(val)) ? 1 : 0;
  case 128:
   H->stringify_uniqueidentifier = zval_get_long(val);
   return 1;
  case 129:
   H->skip_empty_rowsets = zval_is_true(val);
   return 1;
  case 131:
   H->datetime_convert = zval_get_long(val);
   return 1;
  default:
   return 0;
 }
}
