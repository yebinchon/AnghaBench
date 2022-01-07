
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_5__ {char* what; int last_state; int last_err_msg; } ;
struct TYPE_6__ {TYPE_1__ einfo; int assume_utf8; } ;
typedef TYPE_2__ pdo_odbc_db_handle ;
struct TYPE_7__ {scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_dbh_t ;



 int strcpy (int ,char*) ;
 int zval_is_true (int *) ;

__attribute__((used)) static int odbc_handle_set_attr(pdo_dbh_t *dbh, zend_long attr, zval *val)
{
 pdo_odbc_db_handle *H = (pdo_odbc_db_handle *)dbh->driver_data;
 switch (attr) {
  case 128:
   H->assume_utf8 = zval_is_true(val);
   return 1;
  default:
   strcpy(H->einfo.last_err_msg, "Unknown Attribute");
   H->einfo.what = "setAttribute";
   strcpy(H->einfo.last_state, "IM001");
   return 0;
 }
}
