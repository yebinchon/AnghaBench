
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fn_flags; } ;
struct TYPE_7__ {TYPE_1__ common; } ;
typedef TYPE_2__ zend_function ;
struct TYPE_8__ {size_t cnt; int ctor; TYPE_2__** afn; } ;
typedef TYPE_3__ zend_abstract_info ;


 size_t MAX_ABSTRACT_INFO_CNT ;
 int ZEND_ACC_ABSTRACT ;
 int ZEND_ACC_CTOR ;

__attribute__((used)) static void zend_verify_abstract_class_function(zend_function *fn, zend_abstract_info *ai)
{
 if (fn->common.fn_flags & ZEND_ACC_ABSTRACT) {
  if (ai->cnt < MAX_ABSTRACT_INFO_CNT) {
   ai->afn[ai->cnt] = fn;
  }
  if (fn->common.fn_flags & ZEND_ACC_CTOR) {
   if (!ai->ctor) {
    ai->cnt++;
    ai->ctor = 1;
   } else {
    ai->afn[ai->cnt] = ((void*)0);
   }
  } else {
   ai->cnt++;
  }
 }
}
