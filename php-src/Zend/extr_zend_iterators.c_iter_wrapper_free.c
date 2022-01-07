
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* funcs; } ;
typedef TYPE_2__ zend_object_iterator ;
typedef int zend_object ;
struct TYPE_4__ {int (* dtor ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void iter_wrapper_free(zend_object *object)
{
 zend_object_iterator *iter = (zend_object_iterator*)object;
 iter->funcs->dtor(iter);
}
