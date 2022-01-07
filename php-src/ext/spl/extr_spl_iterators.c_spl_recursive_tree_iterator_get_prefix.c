
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_10__ {int level; TYPE_2__* prefix; TYPE_1__* iterators; } ;
typedef TYPE_3__ spl_recursive_it_object ;
struct TYPE_11__ {int s; int member_0; } ;
typedef TYPE_4__ smart_str ;
struct TYPE_9__ {int s; } ;
struct TYPE_8__ {int ce; int zobject; } ;


 scalar_t__ IS_TRUE ;
 scalar_t__ IS_UNDEF ;
 int RETURN_NEW_STR (int ) ;
 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int Z_OBJ (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int smart_str_0 (TYPE_4__*) ;
 int smart_str_appendl (TYPE_4__*,int ,int ) ;
 int zend_call_method_with_0_params (int ,int ,int *,char*,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_recursive_tree_iterator_get_prefix(spl_recursive_it_object *object, zval *return_value)
{
 smart_str str = {0};
 zval has_next;
 int level;

 smart_str_appendl(&str, ZSTR_VAL(object->prefix[0].s), ZSTR_LEN(object->prefix[0].s));

 for (level = 0; level < object->level; ++level) {
  zend_call_method_with_0_params(Z_OBJ(object->iterators[level].zobject), object->iterators[level].ce, ((void*)0), "hasnext", &has_next);
  if (Z_TYPE(has_next) != IS_UNDEF) {
   if (Z_TYPE(has_next) == IS_TRUE) {
    smart_str_appendl(&str, ZSTR_VAL(object->prefix[1].s), ZSTR_LEN(object->prefix[1].s));
   } else {
    smart_str_appendl(&str, ZSTR_VAL(object->prefix[2].s), ZSTR_LEN(object->prefix[2].s));
   }
   zval_ptr_dtor(&has_next);
  }
 }
 zend_call_method_with_0_params(Z_OBJ(object->iterators[level].zobject), object->iterators[level].ce, ((void*)0), "hasnext", &has_next);
 if (Z_TYPE(has_next) != IS_UNDEF) {
  if (Z_TYPE(has_next) == IS_TRUE) {
   smart_str_appendl(&str, ZSTR_VAL(object->prefix[3].s), ZSTR_LEN(object->prefix[3].s));
  } else {
   smart_str_appendl(&str, ZSTR_VAL(object->prefix[4].s), ZSTR_LEN(object->prefix[4].s));
  }
  zval_ptr_dtor(&has_next);
 }

 smart_str_appendl(&str, ZSTR_VAL(object->prefix[5].s), ZSTR_LEN(object->prefix[5].s));
 smart_str_0(&str);

 RETURN_NEW_STR(str.s);
}
