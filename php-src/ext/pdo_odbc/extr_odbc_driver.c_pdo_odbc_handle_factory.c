
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_ulong ;
struct TYPE_5__ {int dbc; int env; } ;
typedef TYPE_1__ pdo_odbc_db_handle ;
struct TYPE_6__ {char* data_source; int alloc_own_columns; int * methods; int password; scalar_t__* username; int is_persistent; scalar_t__ auto_commit; TYPE_1__* driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int dsnbuf ;
typedef int SQLSMALLINT ;
typedef void* SQLPOINTER ;
typedef scalar_t__ RETCODE ;


 int PDO_ODBC_ATTR_USE_CURSOR_LIBRARY ;
 scalar_t__ SQLAllocHandle (int ,int ,int *) ;
 scalar_t__ SQLConnect (int ,char*,int ,scalar_t__*,int ,int ,int ) ;
 scalar_t__ SQLDriverConnect (int ,int *,char*,int ,char*,int,int *,int ) ;
 scalar_t__ SQLSetConnectAttr (int ,int ,void*,int ) ;
 scalar_t__ SQLSetEnvAttr (int ,int ,void*,int ) ;
 int SQL_ATTR_AUTOCOMMIT ;
 int SQL_ATTR_CP_MATCH ;
 int SQL_ATTR_ODBC_VERSION ;
 scalar_t__ SQL_AUTOCOMMIT_OFF ;
 scalar_t__ SQL_AUTOCOMMIT_ON ;
 scalar_t__ SQL_CP_OFF ;
 scalar_t__ SQL_CUR_USE_IF_NEEDED ;
 int SQL_DRIVER_NOPROMPT ;
 int SQL_HANDLE_DBC ;
 int SQL_HANDLE_ENV ;
 int SQL_IS_INTEGER ;
 int SQL_NTS ;
 int SQL_NULL_HANDLE ;
 int SQL_ODBC_CURSORS ;
 scalar_t__ SQL_OV_ODBC3 ;
 scalar_t__ SQL_SUCCESS ;
 scalar_t__ SQL_SUCCESS_WITH_INFO ;
 int odbc_methods ;
 scalar_t__ pdo_attr_lval (int *,int ,scalar_t__) ;
 int pdo_odbc_drv_error (char*) ;
 scalar_t__ pdo_odbc_pool_mode ;
 scalar_t__ pdo_odbc_pool_on ;
 TYPE_1__* pecalloc (int,int,int ) ;
 int pefree (char*,int ) ;
 int spprintf (char**,int ,char*,char*,scalar_t__*,int ) ;
 scalar_t__ strchr (char*,char) ;
 int strlen (char*) ;
 int strstr (char*,char*) ;

__attribute__((used)) static int pdo_odbc_handle_factory(pdo_dbh_t *dbh, zval *driver_options)
{
 pdo_odbc_db_handle *H;
 RETCODE rc;
 int use_direct = 0;
 zend_ulong cursor_lib;

 H = pecalloc(1, sizeof(*H), dbh->is_persistent);

 dbh->driver_data = H;

 SQLAllocHandle(SQL_HANDLE_ENV, SQL_NULL_HANDLE, &H->env);
 rc = SQLSetEnvAttr(H->env, SQL_ATTR_ODBC_VERSION, (void*)SQL_OV_ODBC3, 0);

 if (rc != SQL_SUCCESS && rc != SQL_SUCCESS_WITH_INFO) {
  pdo_odbc_drv_error("SQLSetEnvAttr: ODBC3");
  goto fail;
 }
 rc = SQLAllocHandle(SQL_HANDLE_DBC, H->env, &H->dbc);
 if (rc != SQL_SUCCESS && rc != SQL_SUCCESS_WITH_INFO) {
  pdo_odbc_drv_error("SQLAllocHandle (DBC)");
  goto fail;
 }

 rc = SQLSetConnectAttr(H->dbc, SQL_ATTR_AUTOCOMMIT,
  (SQLPOINTER)(dbh->auto_commit ? SQL_AUTOCOMMIT_ON : SQL_AUTOCOMMIT_OFF), SQL_IS_INTEGER);
 if (rc != SQL_SUCCESS) {
  pdo_odbc_drv_error("SQLSetConnectAttr AUTOCOMMIT");
  goto fail;
 }


 cursor_lib = pdo_attr_lval(driver_options, PDO_ODBC_ATTR_USE_CURSOR_LIBRARY, SQL_CUR_USE_IF_NEEDED);
 rc = SQLSetConnectAttr(H->dbc, SQL_ODBC_CURSORS, (void*)cursor_lib, SQL_IS_INTEGER);
 if (rc != SQL_SUCCESS && cursor_lib != SQL_CUR_USE_IF_NEEDED) {
  pdo_odbc_drv_error("SQLSetConnectAttr SQL_ODBC_CURSORS");
  goto fail;
 }

 if (strchr(dbh->data_source, ';')) {
  char dsnbuf[1024];
  SQLSMALLINT dsnbuflen;

  use_direct = 1;


  if (dbh->username && *dbh->username && !strstr(dbh->data_source, "uid")
    && !strstr(dbh->data_source, "UID")) {
   char *dsn;
   spprintf(&dsn, 0, "%s;UID=%s;PWD=%s", dbh->data_source, dbh->username, dbh->password);
   pefree((char*)dbh->data_source, dbh->is_persistent);
   dbh->data_source = dsn;
  }

  rc = SQLDriverConnect(H->dbc, ((void*)0), (char*)dbh->data_source, strlen(dbh->data_source),
    dsnbuf, sizeof(dsnbuf)-1, &dsnbuflen, SQL_DRIVER_NOPROMPT);
 }
 if (!use_direct) {
  rc = SQLConnect(H->dbc, (char*)dbh->data_source, SQL_NTS, dbh->username, SQL_NTS, dbh->password, SQL_NTS);
 }

 if (rc != SQL_SUCCESS && rc != SQL_SUCCESS_WITH_INFO) {
  pdo_odbc_drv_error(use_direct ? "SQLDriverConnect" : "SQLConnect");
  goto fail;
 }



 dbh->methods = &odbc_methods;
 dbh->alloc_own_columns = 1;

 return 1;

fail:
 dbh->methods = &odbc_methods;
 return 0;
}
