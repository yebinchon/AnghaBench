
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_long ;
struct TYPE_5__ {scalar_t__ column_count; scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {TYPE_3__* fields; int result; int stmt; } ;
typedef TYPE_2__ pdo_mysql_stmt ;
struct TYPE_7__ {char* def; int flags; int type; char* table; } ;
typedef TYPE_3__ MYSQL_FIELD ;


 int FAILURE ;
 scalar_t__ IS_BLOB (int) ;
 scalar_t__ IS_NOT_NULL (int) ;
 scalar_t__ IS_PRI_KEY (int) ;
 int MULTIPLE_KEY_FLAG ;







 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,int ) ;
 int PDO_DBG_RETURN (int ) ;
 int PDO_PARAM_INT ;
 int PDO_PARAM_STR ;
 int SUCCESS ;
 int UNIQUE_KEY_FLAG ;
 int add_assoc_long (int *,char*,int ) ;
 int add_assoc_string (int *,char*,char*) ;
 int add_assoc_zval (int *,char*,int *) ;
 int add_next_index_string (int *,char*) ;
 int array_init (int *) ;
 char* type_to_name_native (int) ;

__attribute__((used)) static int pdo_mysql_stmt_col_meta(pdo_stmt_t *stmt, zend_long colno, zval *return_value)
{
 pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;
 const MYSQL_FIELD *F;
 zval flags;
 char *str;

 PDO_DBG_ENTER("pdo_mysql_stmt_col_meta");
 PDO_DBG_INF_FMT("stmt=%p", S->stmt);
 if (!S->result) {
  PDO_DBG_RETURN(FAILURE);
 }
 if (colno >= stmt->column_count) {

  PDO_DBG_RETURN(FAILURE);
 }

 array_init(return_value);
 array_init(&flags);

 F = S->fields + colno;

 if (F->def) {
  add_assoc_string(return_value, "mysql:def", F->def);
 }
 if (IS_NOT_NULL(F->flags)) {
  add_next_index_string(&flags, "not_null");
 }
 if (IS_PRI_KEY(F->flags)) {
  add_next_index_string(&flags, "primary_key");
 }
 if (F->flags & MULTIPLE_KEY_FLAG) {
  add_next_index_string(&flags, "multiple_key");
 }
 if (F->flags & UNIQUE_KEY_FLAG) {
  add_next_index_string(&flags, "unique_key");
 }
 if (IS_BLOB(F->flags)) {
  add_next_index_string(&flags, "blob");
 }
 str = type_to_name_native(F->type);
 if (str) {
  add_assoc_string(return_value, "native_type", str);
 }
 add_assoc_zval(return_value, "flags", &flags);
 add_assoc_string(return_value, "table", (char *) (F->table?F->table : ""));

 PDO_DBG_RETURN(SUCCESS);
}
