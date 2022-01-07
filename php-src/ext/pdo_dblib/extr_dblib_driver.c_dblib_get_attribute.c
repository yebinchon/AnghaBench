
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {int datetime_convert; int skip_empty_rowsets; int link; int stringify_uniqueidentifier; int assume_national_character_set_strings; } ;
typedef TYPE_1__ pdo_dblib_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
 int PDO_PARAM_STR_CHAR ;
 int PDO_PARAM_STR_NATL ;
 int ZVAL_BOOL (int *,int ) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_STRING (int *,int ) ;
 int ZVAL_TRUE (int *) ;
 int dblib_get_tds_version (int *,int ) ;
 int dbtds (int ) ;
 int dbversion () ;

__attribute__((used)) static int dblib_get_attribute(pdo_dbh_t *dbh, zend_long attr, zval *return_value)
{
 pdo_dblib_db_handle *H = (pdo_dblib_db_handle *)dbh->driver_data;

 switch (attr) {
  case 134:
   ZVAL_LONG(return_value, H->assume_national_character_set_strings ? PDO_PARAM_STR_NATL : PDO_PARAM_STR_CHAR);
   break;

  case 133:

   ZVAL_TRUE(return_value);
   break;

  case 130:
   ZVAL_BOOL(return_value, H->stringify_uniqueidentifier);
   break;

  case 128:
   ZVAL_STRING(return_value, dbversion());
   break;

  case 129:
   dblib_get_tds_version(return_value, dbtds(H->link));
   break;

  case 131:
   ZVAL_BOOL(return_value, H->skip_empty_rowsets);
   break;

  case 132:
   ZVAL_BOOL(return_value, H->datetime_convert);
   break;

  default:
   return 0;
 }

 return 1;
}
