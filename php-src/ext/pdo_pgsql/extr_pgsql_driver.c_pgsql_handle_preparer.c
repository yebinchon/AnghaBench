
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {char* named_rewrite_template; int error_code; int supports_placeholders; int * methods; TYPE_2__* driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_10__ {char* query; scalar_t__ stmt_name; scalar_t__ cursor_name; TYPE_3__* H; } ;
typedef TYPE_2__ pdo_pgsql_stmt ;
struct TYPE_11__ {int emulate_prepares; int disable_prepares; int stmt_counter; int server; scalar_t__ disable_native_prepares; } ;
typedef TYPE_3__ pdo_pgsql_db_handle ;
struct TYPE_12__ {int error_code; scalar_t__ driver_data; } ;
typedef TYPE_4__ pdo_dbh_t ;


 int PDO_ATTR_CURSOR ;
 int PDO_ATTR_EMULATE_PREPARES ;
 int PDO_CURSOR_FWDONLY ;
 int PDO_CURSOR_SCROLL ;
 int PDO_PGSQL_ATTR_DISABLE_PREPARES ;
 int PDO_PLACEHOLDER_NAMED ;
 int PDO_PLACEHOLDER_NONE ;
 int PQprotocolVersion (int ) ;
 TYPE_2__* ecalloc (int,int) ;
 int efree (scalar_t__) ;
 char* estrdup (char const*) ;
 int pdo_attr_lval (int *,int ,int) ;
 int pdo_parse_params (TYPE_1__*,char*,size_t,char**,size_t*) ;
 int pgsql_stmt_methods ;
 int spprintf (scalar_t__*,int ,char*,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int pgsql_handle_preparer(pdo_dbh_t *dbh, const char *sql, size_t sql_len, pdo_stmt_t *stmt, zval *driver_options)
{
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
 pdo_pgsql_stmt *S = ecalloc(1, sizeof(pdo_pgsql_stmt));
 int scrollable;
 int ret;
 char *nsql = ((void*)0);
 size_t nsql_len = 0;
 int emulate = 0;
 int execute_only = 0;

 S->H = H;
 stmt->driver_data = S;
 stmt->methods = &pgsql_stmt_methods;

 scrollable = pdo_attr_lval(driver_options, PDO_ATTR_CURSOR,
  PDO_CURSOR_FWDONLY) == PDO_CURSOR_SCROLL;

 if (scrollable) {
  if (S->cursor_name) {
   efree(S->cursor_name);
  }
  spprintf(&S->cursor_name, 0, "pdo_crsr_%08x", ++H->stmt_counter);
  emulate = 1;
 } else if (driver_options) {
  if (pdo_attr_lval(driver_options, PDO_ATTR_EMULATE_PREPARES, H->emulate_prepares) == 1) {
   emulate = 1;
  }
  if (pdo_attr_lval(driver_options, PDO_PGSQL_ATTR_DISABLE_PREPARES, H->disable_prepares) == 1) {
   execute_only = 1;
  }
 } else {
  emulate = H->disable_native_prepares || H->emulate_prepares;
  execute_only = H->disable_prepares;
 }

 if (!emulate && PQprotocolVersion(H->server) <= 2) {
  emulate = 1;
 }

 if (emulate) {
  stmt->supports_placeholders = PDO_PLACEHOLDER_NONE;
 } else {
  stmt->supports_placeholders = PDO_PLACEHOLDER_NAMED;
  stmt->named_rewrite_template = "$%d";
 }

 ret = pdo_parse_params(stmt, (char*)sql, sql_len, &nsql, &nsql_len);

 if (ret == -1) {

  strcpy(dbh->error_code, stmt->error_code);
  return 0;
 } else if (ret == 1) {

  S->query = nsql;
 } else {
  S->query = estrdup(sql);
 }

 if (!emulate && !execute_only) {


  spprintf(&S->stmt_name, 0, "pdo_stmt_%08x", ++H->stmt_counter);
 }

 return 1;
}
