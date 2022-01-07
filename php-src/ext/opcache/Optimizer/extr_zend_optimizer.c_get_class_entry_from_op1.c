
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_16__ {int class_table; } ;
typedef TYPE_3__ zend_script ;
struct TYPE_17__ {scalar_t__ filename; TYPE_6__* scope; } ;
typedef TYPE_4__ zend_op_array ;
struct TYPE_13__ {int num; } ;
struct TYPE_18__ {scalar_t__ op1_type; TYPE_12__ op1; } ;
typedef TYPE_5__ zend_op ;
struct TYPE_14__ {scalar_t__ filename; } ;
struct TYPE_15__ {TYPE_1__ user; } ;
struct TYPE_19__ {scalar_t__ type; int ce_flags; TYPE_2__ info; } ;
typedef TYPE_6__ zend_class_entry ;


 int * CRT_CONSTANT (TYPE_12__) ;
 int * EG (int ) ;
 scalar_t__ IS_CONST ;
 scalar_t__ IS_STRING ;
 scalar_t__ IS_UNUSED ;
 int ZEND_ACC_TRAIT ;
 int ZEND_FETCH_CLASS_MASK ;
 int ZEND_FETCH_CLASS_SELF ;
 scalar_t__ ZEND_INTERNAL_CLASS ;
 scalar_t__ ZEND_USER_CLASS ;
 int * Z_STR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int class_table ;
 TYPE_6__* zend_hash_find_ptr (int *,int *) ;

__attribute__((used)) static zend_class_entry *get_class_entry_from_op1(
  zend_script *script, zend_op_array *op_array, zend_op *opline) {
 if (opline->op1_type == IS_CONST) {
  zval *op1 = CRT_CONSTANT(opline->op1);
  if (Z_TYPE_P(op1) == IS_STRING) {
   zend_string *class_name = Z_STR_P(op1 + 1);
   zend_class_entry *ce;
   if (script && (ce = zend_hash_find_ptr(&script->class_table, class_name))) {
    return ce;
   } else if ((ce = zend_hash_find_ptr(EG(class_table), class_name))) {
    if (ce->type == ZEND_INTERNAL_CLASS) {
     return ce;
    } else if (ce->type == ZEND_USER_CLASS &&
         ce->info.user.filename &&
         ce->info.user.filename == op_array->filename) {
     return ce;
    }
   }
  }
 } else if (opline->op1_type == IS_UNUSED && op_array->scope
   && !(op_array->scope->ce_flags & ZEND_ACC_TRAIT)
   && (opline->op1.num & ZEND_FETCH_CLASS_MASK) == ZEND_FETCH_CLASS_SELF) {
  return op_array->scope;
 }
 return ((void*)0);
}
