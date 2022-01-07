
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
struct php_sqlite3_bound_param {int param_number; int * name; } ;
struct TYPE_3__ {int stmt; int * bound_params; } ;
typedef TYPE_1__ php_sqlite3_stmt ;
typedef int HashTable ;


 int ALLOC_HASHTABLE (int *) ;
 scalar_t__ ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int memmove (char*,char*,scalar_t__) ;
 int sqlite3_bind_parameter_index (int ,char*) ;
 int sqlite3_param_dtor ;
 int zend_hash_index_del (int *,int) ;
 int zend_hash_index_update_mem (int *,int,struct php_sqlite3_bound_param*,int) ;
 int zend_hash_init (int *,int,int *,int ,int ) ;
 int zend_hash_update_mem (int *,int *,struct php_sqlite3_bound_param*,int) ;
 int * zend_string_alloc (scalar_t__,int ) ;
 int * zend_string_copy (int *) ;
 int zend_string_release_ex (int *,int ) ;

__attribute__((used)) static int register_bound_parameter_to_sqlite(struct php_sqlite3_bound_param *param, php_sqlite3_stmt *stmt)
{
 HashTable *hash;
 hash = stmt->bound_params;

 if (!hash) {
  ALLOC_HASHTABLE(hash);
  zend_hash_init(hash, 13, ((void*)0), sqlite3_param_dtor, 0);
  stmt->bound_params = hash;
 }


 if (param->name) {
  if (ZSTR_VAL(param->name)[0] != ':' && ZSTR_VAL(param->name)[0] != '@') {

   zend_string *temp = zend_string_alloc(ZSTR_LEN(param->name) + 1, 0);
   ZSTR_VAL(temp)[0] = ':';
   memmove(ZSTR_VAL(temp) + 1, ZSTR_VAL(param->name), ZSTR_LEN(param->name) + 1);
   param->name = temp;
  } else {
   param->name = zend_string_copy(param->name);
  }

  param->param_number = sqlite3_bind_parameter_index(stmt->stmt, ZSTR_VAL(param->name));
 }

 if (param->param_number < 1) {
  if (param->name) {
   zend_string_release_ex(param->name, 0);
  }
  return 0;
 }

 if (param->param_number >= 1) {
  zend_hash_index_del(hash, param->param_number);
 }

 if (param->name) {
  zend_hash_update_mem(hash, param->name, param, sizeof(struct php_sqlite3_bound_param));
 } else {
  zend_hash_index_update_mem(hash, param->param_number, param, sizeof(struct php_sqlite3_bound_param));
 }

 return 1;
}
