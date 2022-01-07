
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_11__ {void* object; int called_scope; scalar_t__ function_handler; } ;
typedef TYPE_1__ zend_fcall_info_cache ;
struct TYPE_12__ {int size; int no_separation; int * params; scalar_t__ param_count; int * retval; void* object; int function_name; } ;
typedef TYPE_2__ zend_fcall_info ;
typedef int zend_execute_data ;
struct TYPE_13__ {scalar_t__ constructor; } ;
typedef TYPE_3__ zend_class_entry ;
struct TYPE_14__ {int query_stringlen; int query_string; } ;
typedef TYPE_4__ pdo_stmt_t ;


 scalar_t__ FAILURE ;
 int ZVAL_STRINGL (int *,int ,int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_OBJCE_P (int *) ;
 void* Z_OBJ_P (int *) ;
 scalar_t__ zend_call_function (TYPE_2__*,TYPE_1__*) ;
 int zend_fcall_info_args (TYPE_2__*,int *) ;
 int zend_fcall_info_args_clear (TYPE_2__*,int) ;
 int zend_std_write_property (void*,int *,int *,int *) ;
 int * zend_string_init (char*,int,int ) ;
 int zend_string_release_ex (int *,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void pdo_stmt_construct(zend_execute_data *execute_data, pdo_stmt_t *stmt, zval *object, zend_class_entry *dbstmt_ce, zval *ctor_args)
{
 zval query_string;
 zend_string *key;

 ZVAL_STRINGL(&query_string, stmt->query_string, stmt->query_stringlen);
 key = zend_string_init("queryString", sizeof("queryString") - 1, 0);
 zend_std_write_property(Z_OBJ_P(object), key, &query_string, ((void*)0));
 zval_ptr_dtor(&query_string);
 zend_string_release_ex(key, 0);

 if (dbstmt_ce->constructor) {
  zend_fcall_info fci;
  zend_fcall_info_cache fcc;
  zval retval;

  fci.size = sizeof(zend_fcall_info);
  ZVAL_UNDEF(&fci.function_name);
  fci.object = Z_OBJ_P(object);
  fci.retval = &retval;
  fci.param_count = 0;
  fci.params = ((void*)0);
  fci.no_separation = 1;

  zend_fcall_info_args(&fci, ctor_args);

  fcc.function_handler = dbstmt_ce->constructor;
  fcc.called_scope = Z_OBJCE_P(object);
  fcc.object = Z_OBJ_P(object);

  if (zend_call_function(&fci, &fcc) != FAILURE) {
   zval_ptr_dtor(&retval);
  }

  zend_fcall_info_args_clear(&fci, 1);
 }
}
