
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int error_code; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_8__ {int errcode; char const* file; int line; int * errmsg; } ;
typedef TYPE_2__ pdo_pgsql_error_info ;
struct TYPE_9__ {int server; TYPE_2__ einfo; } ;
typedef TYPE_3__ pdo_pgsql_db_handle ;
typedef int pdo_error_type ;
struct TYPE_10__ {int methods; int is_persistent; int error_code; scalar_t__ driver_data; } ;
typedef TYPE_4__ pdo_dbh_t ;


 char* PQerrorMessage (int ) ;
 int * _pdo_pgsql_trim_message (char*,int ) ;
 int * estrdup (char const*) ;
 int pefree (int *,int ) ;
 int php_pdo_get_exception () ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;
 int zend_throw_exception_ex (int ,int,char*,int ,int,int *) ;

int _pdo_pgsql_error(pdo_dbh_t *dbh, pdo_stmt_t *stmt, int errcode, const char *sqlstate, const char *msg, const char *file, int line)
{
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
 pdo_error_type *pdo_err = stmt ? &stmt->error_code : &dbh->error_code;
 pdo_pgsql_error_info *einfo = &H->einfo;
 char *errmsg = PQerrorMessage(H->server);

 einfo->errcode = errcode;
 einfo->file = file;
 einfo->line = line;

 if (einfo->errmsg) {
  pefree(einfo->errmsg, dbh->is_persistent);
  einfo->errmsg = ((void*)0);
 }

 if (sqlstate == ((void*)0) || strlen(sqlstate) >= sizeof(pdo_error_type)) {
  strcpy(*pdo_err, "HY000");
 }
 else {
  strcpy(*pdo_err, sqlstate);
 }

 if (msg) {
  einfo->errmsg = estrdup(msg);
 }
 else if (errmsg) {
  einfo->errmsg = _pdo_pgsql_trim_message(errmsg, dbh->is_persistent);
 }

 if (!dbh->methods) {
  zend_throw_exception_ex(php_pdo_get_exception(), einfo->errcode, "SQLSTATE[%s] [%d] %s",
    *pdo_err, einfo->errcode, einfo->errmsg);
 }

 return errcode;
}
