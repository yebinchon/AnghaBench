
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {TYPE_1__* funcs; } ;
typedef TYPE_3__ zend_object_iterator ;
struct TYPE_10__ {int level; scalar_t__ in_iteration; scalar_t__ endIteration; int ce; TYPE_2__* iterators; } ;
typedef TYPE_4__ spl_recursive_it_object ;
struct TYPE_8__ {TYPE_3__* iterator; } ;
struct TYPE_7__ {scalar_t__ (* valid ) (TYPE_3__*) ;} ;


 int FAILURE ;
 scalar_t__ SUCCESS ;
 int Z_OBJ_P (int *) ;
 scalar_t__ stub1 (TYPE_3__*) ;
 int zend_call_method_with_0_params (int ,int ,scalar_t__*,char*,int *) ;

__attribute__((used)) static int spl_recursive_it_valid_ex(spl_recursive_it_object *object, zval *zthis)
{
 zend_object_iterator *sub_iter;
 int level = object->level;

 if(!object->iterators) {
  return FAILURE;
 }
 while (level >=0) {
  sub_iter = object->iterators[level].iterator;
  if (sub_iter->funcs->valid(sub_iter) == SUCCESS) {
   return SUCCESS;
  }
  level--;
 }
 if (object->endIteration && object->in_iteration) {
  zend_call_method_with_0_params(Z_OBJ_P(zthis), object->ce, &object->endIteration, "endIteration", ((void*)0));
 }
 object->in_iteration = 0;
 return FAILURE;
}
