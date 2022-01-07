
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_long ;
typedef int zend_bool ;
struct TYPE_5__ {char* last_app_error; int fetch_table_names; int timestamp_format; int time_format; int date_format; } ;
typedef TYPE_1__ pdo_firebird_db_handle ;
struct TYPE_6__ {int auto_commit; int in_txn; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;







 int UNEXPECTED (int) ;
 int ZSTR_VAL (int *) ;
 int efree (int ) ;
 int firebird_handle_commit (TYPE_2__*) ;
 int spprintf (int *,int ,char*,int ) ;
 int zend_string_release_ex (int *,int ) ;
 int zval_get_long (int *) ;
 int * zval_try_get_string (int *) ;

__attribute__((used)) static int firebird_handle_set_attribute(pdo_dbh_t *dbh, zend_long attr, zval *val)
{
 pdo_firebird_db_handle *H = (pdo_firebird_db_handle *)dbh->driver_data;

 switch (attr) {
  case 132:
   {
    zend_bool bval = zval_get_long(val)? 1 : 0;


    if (dbh->auto_commit ^ bval) {
     if (dbh->in_txn) {
      if (bval) {


       H->last_app_error = "Cannot enable auto-commit while a transaction is already open";
       return 0;
      } else {

       if (!firebird_handle_commit(dbh)) {
        break;
       }
       dbh->in_txn = 0;
      }
     }
     dbh->auto_commit = bval;
    }
   }
   return 1;

  case 131:
   H->fetch_table_names = zval_get_long(val)? 1 : 0;
   return 1;

  case 130:
   {
    zend_string *str = zval_try_get_string(val);
    if (UNEXPECTED(!str)) {
     return 0;
    }
    if (H->date_format) {
     efree(H->date_format);
    }
    spprintf(&H->date_format, 0, "%s", ZSTR_VAL(str));
    zend_string_release_ex(str, 0);
   }
   return 1;

  case 128:
   {
    zend_string *str = zval_try_get_string(val);
    if (UNEXPECTED(!str)) {
     return 0;
    }
    if (H->time_format) {
     efree(H->time_format);
    }
    spprintf(&H->time_format, 0, "%s", ZSTR_VAL(str));
    zend_string_release_ex(str, 0);
   }
   return 1;

  case 129:
   {
    zend_string *str = zval_try_get_string(val);
    if (UNEXPECTED(!str)) {
     return 0;
    }
    if (H->timestamp_format) {
     efree(H->timestamp_format);
    }
    spprintf(&H->timestamp_format, 0, "%s", ZSTR_VAL(str));
    zend_string_release_ex(str, 0);
   }
   return 1;
 }
 return 0;
}
