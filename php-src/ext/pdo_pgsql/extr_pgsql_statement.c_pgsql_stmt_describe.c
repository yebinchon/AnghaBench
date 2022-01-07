
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_long ;
struct pdo_column_data {void* param_type; int name; int precision; int maxlen; } ;
struct pdo_bound_param_data {int param_type; } ;
struct TYPE_6__ {int bound_columns; struct pdo_column_data* columns; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_7__ {TYPE_1__* cols; int result; } ;
typedef TYPE_3__ pdo_pgsql_stmt ;
struct TYPE_5__ {int pgsql_type; } ;
 void* PDO_PARAM_BOOL ;
 void* PDO_PARAM_INT ;
 void* PDO_PARAM_LOB ;
 void* PDO_PARAM_STR ;
 void* PDO_PARAM_TYPE (int ) ;
 int PQfmod (int ,int) ;
 char* PQfname (int ,int) ;
 int PQfsize (int ,int) ;
 int PQftype (int ,int) ;
 int strlen (char*) ;
 struct pdo_bound_param_data* zend_hash_find_ptr (int ,int ) ;
 struct pdo_bound_param_data* zend_hash_index_find_ptr (int ,int) ;
 int zend_string_init (char*,int ,int ) ;

__attribute__((used)) static int pgsql_stmt_describe(pdo_stmt_t *stmt, int colno)
{
 pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;
 struct pdo_column_data *cols = stmt->columns;
 struct pdo_bound_param_data *param;
 char *str;

 if (!S->result) {
  return 0;
 }

 str = PQfname(S->result, colno);
 cols[colno].name = zend_string_init(str, strlen(str), 0);
 cols[colno].maxlen = PQfsize(S->result, colno);
 cols[colno].precision = PQfmod(S->result, colno);
 S->cols[colno].pgsql_type = PQftype(S->result, colno);

 switch (S->cols[colno].pgsql_type) {

  case 133:
   cols[colno].param_type = PDO_PARAM_BOOL;
   break;

  case 128:

   if (stmt->bound_columns && (
     (param = zend_hash_index_find_ptr(stmt->bound_columns, colno)) != ((void*)0) ||
     (param = zend_hash_find_ptr(stmt->bound_columns, cols[colno].name)) != ((void*)0))) {

    if (PDO_PARAM_TYPE(param->param_type) == PDO_PARAM_LOB) {
     cols[colno].param_type = PDO_PARAM_LOB;
     break;
    }
   }
   cols[colno].param_type = PDO_PARAM_INT;
   break;

  case 131:
  case 130:
   cols[colno].param_type = PDO_PARAM_INT;
   break;

  case 129:
   if (sizeof(zend_long)>=8) {
    cols[colno].param_type = PDO_PARAM_INT;
   } else {
    cols[colno].param_type = PDO_PARAM_STR;
   }
   break;

  case 132:
   cols[colno].param_type = PDO_PARAM_LOB;
   break;

  default:
   cols[colno].param_type = PDO_PARAM_STR;
 }

 return 1;
}
