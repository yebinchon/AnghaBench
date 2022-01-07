
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_class_entry ;
struct TYPE_5__ {char* error_code; } ;
typedef TYPE_1__ pdo_stmt_t ;
typedef char* pdo_error_type ;
struct TYPE_6__ {char* error_code; scalar_t__ error_mode; } ;
typedef TYPE_2__ pdo_dbh_t ;


 int E_WARNING ;
 scalar_t__ PDO_ERRMODE_EXCEPTION ;
 scalar_t__ PDO_ERRMODE_SILENT ;
 int add_next_index_long (int *,int ) ;
 int add_next_index_string (int *,char*) ;
 int array_init (int *) ;
 int efree (char*) ;
 int object_init_ex (int *,int *) ;
 char* pdo_sqlstate_state_to_description (char*) ;
 int php_error_docref (int *,int ,char*,char*) ;
 int * php_pdo_get_exception () ;
 int * php_pdo_get_exception_base (int) ;
 int spprintf (char**,int ,char*,char*,char const*,...) ;
 int strncpy (char*,char const*,int) ;
 int zend_throw_exception_object (int *) ;
 int zend_update_property (int *,int *,char*,int,int *) ;
 int zend_update_property_string (int *,int *,char*,int,char*) ;
 int zval_ptr_dtor (int *) ;

void pdo_raise_impl_error(pdo_dbh_t *dbh, pdo_stmt_t *stmt, const char *sqlstate, const char *supp)
{
 pdo_error_type *pdo_err = &dbh->error_code;
 char *message = ((void*)0);
 const char *msg;

 if (dbh && dbh->error_mode == PDO_ERRMODE_SILENT) {






 }

 if (stmt) {
  pdo_err = &stmt->error_code;
 }

 strncpy(*pdo_err, sqlstate, 6);


 msg = pdo_sqlstate_state_to_description(*pdo_err);
 if (!msg) {
  msg = "<<Unknown error>>";
 }

 if (supp) {
  spprintf(&message, 0, "SQLSTATE[%s]: %s: %s", *pdo_err, msg, supp);
 } else {
  spprintf(&message, 0, "SQLSTATE[%s]: %s", *pdo_err, msg);
 }

 if (dbh && dbh->error_mode != PDO_ERRMODE_EXCEPTION) {
  php_error_docref(((void*)0), E_WARNING, "%s", message);
 } else {
  zval ex, info;
  zend_class_entry *def_ex = php_pdo_get_exception_base(1), *pdo_ex = php_pdo_get_exception();

  object_init_ex(&ex, pdo_ex);

  zend_update_property_string(def_ex, &ex, "message", sizeof("message")-1, message);
  zend_update_property_string(def_ex, &ex, "code", sizeof("code")-1, *pdo_err);

  array_init(&info);

  add_next_index_string(&info, *pdo_err);
  add_next_index_long(&info, 0);
  zend_update_property(pdo_ex, &ex, "errorInfo", sizeof("errorInfo")-1, &info);
  zval_ptr_dtor(&info);

  zend_throw_exception_object(&ex);
 }

 if (message) {
  efree(message);
 }
}
