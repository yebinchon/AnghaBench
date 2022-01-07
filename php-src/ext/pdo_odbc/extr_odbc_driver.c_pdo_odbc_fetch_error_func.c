
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_10__ {int last_state; int last_error; int line; int file; int what; int last_err_msg; } ;
struct TYPE_9__ {TYPE_3__ einfo; } ;
typedef TYPE_2__ pdo_odbc_stmt ;
typedef TYPE_3__ pdo_odbc_errinfo ;
struct TYPE_11__ {TYPE_3__ einfo; } ;
typedef TYPE_4__ pdo_odbc_db_handle ;
struct TYPE_12__ {scalar_t__ driver_data; } ;
typedef TYPE_5__ pdo_dbh_t ;


 int add_next_index_long (int *,int ) ;
 int add_next_index_str (int *,int *) ;
 int add_next_index_string (int *,int ) ;
 int * strpprintf (int ,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int pdo_odbc_fetch_error_func(pdo_dbh_t *dbh, pdo_stmt_t *stmt, zval *info)
{
 pdo_odbc_db_handle *H = (pdo_odbc_db_handle *)dbh->driver_data;
 pdo_odbc_errinfo *einfo = &H->einfo;
 pdo_odbc_stmt *S = ((void*)0);
 zend_string *message = ((void*)0);

 if (stmt) {
  S = (pdo_odbc_stmt*)stmt->driver_data;
  einfo = &S->einfo;
 }

 message = strpprintf(0, "%s (%s[%ld] at %s:%d)",
    einfo->last_err_msg,
    einfo->what, einfo->last_error,
    einfo->file, einfo->line);

 add_next_index_long(info, einfo->last_error);
 add_next_index_str(info, message);
 add_next_index_string(info, einfo->last_state);

 return 1;
}
