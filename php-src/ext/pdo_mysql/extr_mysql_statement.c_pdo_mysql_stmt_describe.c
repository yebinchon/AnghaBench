
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pdo_column_data {int param_type; int maxlen; int precision; scalar_t__ name; } ;
struct TYPE_8__ {int column_count; struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef TYPE_3__ pdo_stmt_t ;
struct TYPE_9__ {scalar_t__ stmt; TYPE_2__* fields; TYPE_1__* H; int result; } ;
typedef TYPE_4__ pdo_mysql_stmt ;
struct TYPE_7__ {int length; int decimals; int name_length; int name; int table; } ;
struct TYPE_6__ {scalar_t__ fetch_table_names; } ;


 int PDO_DBG_ENTER (char*) ;
 int PDO_DBG_INF_FMT (char*,scalar_t__) ;
 int PDO_DBG_RETURN (int) ;
 int PDO_PARAM_STR ;
 int PDO_PARAM_ZVAL ;
 scalar_t__ strpprintf (int ,char*,int ,int ) ;
 scalar_t__ zend_string_init (int ,int ,int ) ;

__attribute__((used)) static int pdo_mysql_stmt_describe(pdo_stmt_t *stmt, int colno)
{
 pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;
 struct pdo_column_data *cols = stmt->columns;
 int i;

 PDO_DBG_ENTER("pdo_mysql_stmt_describe");
 PDO_DBG_INF_FMT("stmt=%p", S->stmt);
 if (!S->result) {
  PDO_DBG_RETURN(0);
 }

 if (colno >= stmt->column_count) {

  PDO_DBG_RETURN(0);
 }




 if (cols[0].name) {
  PDO_DBG_RETURN(1);
 }
 for (i = 0; i < stmt->column_count; i++) {

  if (S->H->fetch_table_names) {
   cols[i].name = strpprintf(0, "%s.%s", S->fields[i].table, S->fields[i].name);
  } else {
   cols[i].name = zend_string_init(S->fields[i].name, S->fields[i].name_length, 0);
  }

  cols[i].precision = S->fields[i].decimals;
  cols[i].maxlen = S->fields[i].length;






  {
   cols[i].param_type = PDO_PARAM_STR;
  }
 }
 PDO_DBG_RETURN(1);
}
