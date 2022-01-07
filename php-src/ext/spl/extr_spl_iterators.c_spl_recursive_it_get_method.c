
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_17__ {TYPE_3__* handlers; TYPE_1__* ce; } ;
typedef TYPE_4__ zend_object ;
typedef size_t zend_long ;
typedef int zend_function ;
struct TYPE_18__ {size_t level; TYPE_2__* iterators; } ;
typedef TYPE_5__ spl_recursive_it_object ;
struct TYPE_16__ {int * (* get_method ) (TYPE_4__**,int *,int const*) ;} ;
struct TYPE_15__ {int zobject; } ;
struct TYPE_14__ {int name; } ;
struct TYPE_13__ {int function_table; } ;


 int E_ERROR ;
 int ZSTR_VAL (int ) ;
 TYPE_12__* Z_OBJCE_P (int *) ;
 TYPE_4__* Z_OBJ_P (int *) ;
 int php_error_docref (int *,int ,char*,int ) ;
 TYPE_5__* spl_recursive_it_from_obj (TYPE_4__*) ;
 int * stub1 (TYPE_4__**,int *,int const*) ;
 int * zend_hash_find_ptr (int *,int *) ;
 int * zend_std_get_method (TYPE_4__**,int *,int const*) ;

__attribute__((used)) static zend_function *spl_recursive_it_get_method(zend_object **zobject, zend_string *method, const zval *key)
{
 zend_function *function_handler;
 spl_recursive_it_object *object = spl_recursive_it_from_obj(*zobject);
 zend_long level = object->level;
 zval *zobj;

 if (!object->iterators) {
  php_error_docref(((void*)0), E_ERROR, "The %s instance wasn't initialized properly", ZSTR_VAL((*zobject)->ce->name));
 }
 zobj = &object->iterators[level].zobject;

 function_handler = zend_std_get_method(zobject, method, key);
 if (!function_handler) {
  if ((function_handler = zend_hash_find_ptr(&Z_OBJCE_P(zobj)->function_table, method)) == ((void*)0)) {
   *zobject = Z_OBJ_P(zobj);
   function_handler = (*zobject)->handlers->get_method(zobject, method, key);
  } else {
   *zobject = Z_OBJ_P(zobj);
  }
 }
 return function_handler;
}
