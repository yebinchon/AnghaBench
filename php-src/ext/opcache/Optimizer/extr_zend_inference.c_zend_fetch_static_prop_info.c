
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int zval ;
typedef int zend_ssa ;
typedef int zend_script ;
struct TYPE_14__ {int flags; } ;
typedef TYPE_1__ zend_property_info ;
struct TYPE_15__ {TYPE_4__* scope; } ;
typedef TYPE_2__ zend_op_array ;
struct TYPE_13__ {int num; } ;
struct TYPE_16__ {scalar_t__ op1_type; scalar_t__ op2_type; TYPE_12__ op1; TYPE_12__ op2; } ;
typedef TYPE_3__ zend_op ;
struct TYPE_17__ {int ce_flags; struct TYPE_17__* parent; } ;
typedef TYPE_4__ zend_class_entry ;


 int * CRT_CONSTANT (TYPE_12__) ;
 scalar_t__ IS_CONST ;
 scalar_t__ IS_UNUSED ;
 int ZEND_ACC_LINKED ;
 int ZEND_ACC_STATIC ;
 int ZEND_FETCH_CLASS_MASK ;



 int Z_STR_P (int *) ;
 TYPE_4__* get_class_entry (int const*,int ) ;
 TYPE_1__* lookup_prop_info (TYPE_4__*,int ,TYPE_4__*) ;

__attribute__((used)) static zend_property_info *zend_fetch_static_prop_info(const zend_script *script, const zend_op_array *op_array, zend_ssa *ssa, zend_op *opline)
{
 zend_property_info *prop_info = ((void*)0);
 if (opline->op1_type == IS_CONST) {
  zend_class_entry *ce = ((void*)0);
  if (opline->op2_type == IS_UNUSED) {
   int fetch_type = opline->op2.num & ZEND_FETCH_CLASS_MASK;
   switch (fetch_type) {
    case 129:
    case 128:


     ce = op_array->scope;
     break;
    case 130:
     if (op_array->scope && (op_array->scope->ce_flags & ZEND_ACC_LINKED)) {
      ce = op_array->scope->parent;
     }
     break;
   }
  } else if (opline->op2_type == IS_CONST) {
   zval *zv = CRT_CONSTANT(opline->op2);
   ce = get_class_entry(script, Z_STR_P(zv + 1));
  }

  if (ce) {
   zval *zv = CRT_CONSTANT(opline->op1);
   prop_info = lookup_prop_info(ce, Z_STR_P(zv), op_array->scope);
   if (prop_info && !(prop_info->flags & ZEND_ACC_STATIC)) {
    prop_info = ((void*)0);
   }
  }
 }
 return prop_info;
}
