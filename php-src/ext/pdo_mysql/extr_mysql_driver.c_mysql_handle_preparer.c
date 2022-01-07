
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_ulong ;
struct TYPE_9__ {int supports_placeholders; int error_code; int * methods; TYPE_2__* driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_10__ {int num_params; int max_length; void* in_length; void* in_null; int * params; scalar_t__ params_given; int stmt; TYPE_3__* H; } ;
typedef TYPE_2__ pdo_mysql_stmt ;
struct TYPE_11__ {int server; scalar_t__ emulate_prepare; } ;
typedef TYPE_3__ pdo_mysql_db_handle ;
struct TYPE_12__ {int alloc_own_columns; int error_code; scalar_t__ driver_data; } ;
typedef TYPE_4__ pdo_dbh_t ;
typedef int my_bool ;
typedef int MYSQL_BIND ;


 int PDO_ATTR_MAX_COLUMN_LEN ;
 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,...) ;
 int PDO_DBG_RETURN (int) ;
 int PDO_PLACEHOLDER_NONE ;
 int PDO_PLACEHOLDER_POSITIONAL ;
 void* ecalloc (int,int) ;
 int efree (char*) ;
 int mysql_errno (int ) ;
 int mysql_get_server_version (int ) ;
 int mysql_stmt_init (int ) ;
 int mysql_stmt_methods ;
 int mysql_stmt_param_count (int ) ;
 scalar_t__ mysql_stmt_prepare (int ,char const*,size_t) ;
 int pdo_attr_lval (int *,int ,int ) ;
 int pdo_mysql_error (TYPE_4__*) ;
 int pdo_parse_params (TYPE_1__*,char*,size_t,char**,size_t*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int mysql_handle_preparer(pdo_dbh_t *dbh, const char *sql, size_t sql_len, pdo_stmt_t *stmt, zval *driver_options)
{
 pdo_mysql_db_handle *H = (pdo_mysql_db_handle *)dbh->driver_data;
 pdo_mysql_stmt *S = ecalloc(1, sizeof(pdo_mysql_stmt));
 char *nsql = ((void*)0);
 size_t nsql_len = 0;
 int ret;
 int server_version;

 PDO_DBG_ENTER("mysql_handle_preparer");
 PDO_DBG_INF_FMT("dbh=%p", dbh);
 PDO_DBG_INF_FMT("sql=%.*s", (int)sql_len, sql);

 S->H = H;
 stmt->driver_data = S;
 stmt->methods = &mysql_stmt_methods;

 if (H->emulate_prepare) {
  goto end;
 }

 server_version = mysql_get_server_version(H->server);
 if (server_version < 40100) {
  goto fallback;
 }
 stmt->supports_placeholders = PDO_PLACEHOLDER_POSITIONAL;
 ret = pdo_parse_params(stmt, (char*)sql, sql_len, &nsql, &nsql_len);

 if (ret == 1) {

  sql = nsql;
  sql_len = nsql_len;
 } else if (ret == -1) {

  strcpy(dbh->error_code, stmt->error_code);
  PDO_DBG_RETURN(0);
 }

 if (!(S->stmt = mysql_stmt_init(H->server))) {
  pdo_mysql_error(dbh);
  if (nsql) {
   efree(nsql);
  }
  PDO_DBG_RETURN(0);
 }

 if (mysql_stmt_prepare(S->stmt, sql, sql_len)) {


  if (mysql_errno(H->server) == 1295) {
   if (nsql) {
    efree(nsql);
   }
   goto fallback;
  }
  pdo_mysql_error(dbh);
  if (nsql) {
   efree(nsql);
  }
  PDO_DBG_RETURN(0);
 }
 if (nsql) {
  efree(nsql);
 }

 S->num_params = mysql_stmt_param_count(S->stmt);

 if (S->num_params) {
  S->params_given = 0;



  S->params = ecalloc(S->num_params, sizeof(MYSQL_BIND));
  S->in_null = ecalloc(S->num_params, sizeof(my_bool));
  S->in_length = ecalloc(S->num_params, sizeof(zend_ulong));

 }
 dbh->alloc_own_columns = 1;

 S->max_length = pdo_attr_lval(driver_options, PDO_ATTR_MAX_COLUMN_LEN, 0);

 PDO_DBG_RETURN(1);

fallback:
end:
 stmt->supports_placeholders = PDO_PLACEHOLDER_NONE;

 PDO_DBG_RETURN(1);
}
