
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct pdo_pgsql_lob_self {int oid; } ;
struct pdo_bound_param_data {size_t paramno; int param_type; int parameter; scalar_t__ is_param; TYPE_4__* driver_data; int name; } ;
struct TYPE_12__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
struct TYPE_13__ {scalar_t__ supports_placeholders; int bound_param_map; int dbh; scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_stmt_t ;
struct TYPE_14__ {char** param_values; int* param_lengths; int* param_formats; int * param_types; } ;
typedef TYPE_3__ pdo_pgsql_stmt ;
struct TYPE_15__ {int oid; } ;
typedef TYPE_4__ pdo_pgsql_bound_param ;
typedef enum pdo_param_event { ____Placeholder_pdo_param_event } pdo_param_event ;
typedef int Oid ;


 int IS_FALSE ;
 int IS_NULL ;
 int IS_RESOURCE ;
 int IS_TRUE ;
 int OIDOID ;
 scalar_t__ PDO_PARAM_BOOL ;







 int PDO_PARAM_INPUT_OUTPUT ;
 scalar_t__ PDO_PARAM_LOB ;
 scalar_t__ PDO_PARAM_NULL ;
 int PDO_PARAM_STR ;
 scalar_t__ PDO_PARAM_TYPE (int) ;
 scalar_t__ PDO_PLACEHOLDER_NAMED ;
 int PGRES_FATAL_ERROR ;
 int PHP_STREAM_COPY_ALL ;
 int ZEND_ATOL (size_t,char*) ;
 char* ZSTR_VAL (int ) ;
 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_STR (int *,int *) ;
 int ZVAL_STRINGL (int *,char const*,int) ;
 int Z_ISREF (int ) ;
 int * Z_REFVAL (int ) ;
 int Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 int convert_to_string_ex (int *) ;
 void* ecalloc (int,int) ;
 int efree (TYPE_4__*) ;
 int htonl (int ) ;
 int pdo_pgsql_error_stmt (TYPE_2__*,int ,char*) ;
 int pdo_pgsql_lob_stream_ops ;
 int pdo_raise_impl_error (int ,TYPE_2__*,char*,char*) ;
 int * php_stream_copy_to_mem (TYPE_1__*,int ,int ) ;
 int php_stream_from_zval_no_verify (TYPE_1__*,int *) ;
 int php_stream_is (TYPE_1__*,int *) ;
 char* zend_hash_find_ptr (int ,int ) ;
 int zend_hash_index_exists (int ,size_t) ;
 int zend_hash_num_elements (int ) ;
 scalar_t__ zend_is_true (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int pgsql_stmt_param_hook(pdo_stmt_t *stmt, struct pdo_bound_param_data *param,
  enum pdo_param_event event_type)
{
 pdo_pgsql_stmt *S = (pdo_pgsql_stmt*)stmt->driver_data;

 if (stmt->supports_placeholders == PDO_PLACEHOLDER_NAMED && param->is_param) {
  switch (event_type) {
   case 129:
    if (param->driver_data) {
     efree(param->driver_data);
    }
    break;

   case 128:

    if (param->name) {
     if (ZSTR_VAL(param->name)[0] == '$') {
      ZEND_ATOL(param->paramno, ZSTR_VAL(param->name) + 1);
     } else {

      char *namevar;

      if (stmt->bound_param_map && (namevar = zend_hash_find_ptr(stmt->bound_param_map,
        param->name)) != ((void*)0)) {
       ZEND_ATOL(param->paramno, namevar + 1);
       param->paramno--;
      } else {
       pdo_raise_impl_error(stmt->dbh, stmt, "HY093", ZSTR_VAL(param->name));
       return 0;
      }
     }
    }
    break;

   case 134:
    if (!stmt->bound_param_map) {
     return 1;
    }
    if (!zend_hash_index_exists(stmt->bound_param_map, param->paramno)) {
     pdo_raise_impl_error(stmt->dbh, stmt, "HY093", "parameter was not defined");
     return 0;
    }
   case 133:
   case 130:
   case 131:

    return 1;

   case 132:
    if (!stmt->bound_param_map) {
     return 1;
    }
    if (!S->param_values) {
     S->param_values = ecalloc(
       zend_hash_num_elements(stmt->bound_param_map),
       sizeof(char*));
     S->param_lengths = ecalloc(
       zend_hash_num_elements(stmt->bound_param_map),
       sizeof(int));
     S->param_formats = ecalloc(
       zend_hash_num_elements(stmt->bound_param_map),
       sizeof(int));
     S->param_types = ecalloc(
       zend_hash_num_elements(stmt->bound_param_map),
       sizeof(Oid));
    }
    if (param->paramno >= 0) {
     zval *parameter;
     if (Z_ISREF(param->parameter)) {
      parameter = Z_REFVAL(param->parameter);
     } else {
      parameter = &param->parameter;
     }

     if (PDO_PARAM_TYPE(param->param_type) == PDO_PARAM_LOB &&
       Z_TYPE_P(parameter) == IS_RESOURCE) {
      php_stream *stm;
      php_stream_from_zval_no_verify(stm, parameter);
      if (stm) {
       if (php_stream_is(stm, &pdo_pgsql_lob_stream_ops)) {
        struct pdo_pgsql_lob_self *self = (struct pdo_pgsql_lob_self*)stm->abstract;
        pdo_pgsql_bound_param *P = param->driver_data;

        if (P == ((void*)0)) {
         P = ecalloc(1, sizeof(*P));
         param->driver_data = P;
        }
        P->oid = htonl(self->oid);
        S->param_values[param->paramno] = (char*)&P->oid;
        S->param_lengths[param->paramno] = sizeof(P->oid);
        S->param_formats[param->paramno] = 1;
        S->param_types[param->paramno] = OIDOID;
        return 1;
       } else {
        zend_string *str = php_stream_copy_to_mem(stm, PHP_STREAM_COPY_ALL, 0);
        if (str != ((void*)0)) {

         ZVAL_STR(parameter, str);
        } else {
         ZVAL_EMPTY_STRING(parameter);
        }
       }
      } else {

       pdo_pgsql_error_stmt(stmt, PGRES_FATAL_ERROR, "HY105");
       return 0;
      }
     }

     if (PDO_PARAM_TYPE(param->param_type) == PDO_PARAM_NULL ||
       Z_TYPE_P(parameter) == IS_NULL) {
      S->param_values[param->paramno] = ((void*)0);
      S->param_lengths[param->paramno] = 0;
     } else if (Z_TYPE_P(parameter) == IS_FALSE || Z_TYPE_P(parameter) == IS_TRUE) {
      S->param_values[param->paramno] = Z_TYPE_P(parameter) == IS_TRUE ? "t" : "f";
      S->param_lengths[param->paramno] = 1;
      S->param_formats[param->paramno] = 0;
     } else {

      convert_to_string_ex(parameter);
      S->param_values[param->paramno] = Z_STRVAL_P(parameter);
      S->param_lengths[param->paramno] = Z_STRLEN_P(parameter);
      S->param_formats[param->paramno] = 0;
     }

     if (PDO_PARAM_TYPE(param->param_type) == PDO_PARAM_LOB) {
      S->param_types[param->paramno] = 0;
      S->param_formats[param->paramno] = 1;
     } else {
      S->param_types[param->paramno] = 0;
     }
    }
    break;
  }
 } else if (param->is_param) {

  if (PDO_PARAM_TYPE(param->param_type) == PDO_PARAM_BOOL &&
   ((param->param_type & PDO_PARAM_INPUT_OUTPUT) != PDO_PARAM_INPUT_OUTPUT)) {
   const char *s = zend_is_true(&param->parameter) ? "t" : "f";
   param->param_type = PDO_PARAM_STR;
   zval_ptr_dtor(&param->parameter);
   ZVAL_STRINGL(&param->parameter, s, 1);
  }
 }
 return 1;
}
