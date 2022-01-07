
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ce; } ;
typedef TYPE_1__ zend_object ;


 TYPE_1__* spl_fixedarray_object_new_ex (int ,TYPE_1__*,int) ;
 int zend_objects_clone_members (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static zend_object *spl_fixedarray_object_clone(zend_object *old_object)
{
 zend_object *new_object = spl_fixedarray_object_new_ex(old_object->ce, old_object, 1);

 zend_objects_clone_members(new_object, old_object);

 return new_object;
}
