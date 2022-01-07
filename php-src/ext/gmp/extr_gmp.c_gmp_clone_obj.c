
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ce; } ;
typedef TYPE_1__ zend_object ;
struct TYPE_11__ {TYPE_1__ std; int num; } ;
typedef TYPE_2__ gmp_object ;


 TYPE_2__* GET_GMP_OBJECT_FROM_OBJ (TYPE_1__*) ;
 TYPE_1__* gmp_create_object (int ) ;
 int mpz_set (int ,int ) ;
 int zend_objects_clone_members (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static zend_object *gmp_clone_obj(zend_object *obj)
{
 gmp_object *old_object = GET_GMP_OBJECT_FROM_OBJ(obj);
 gmp_object *new_object = GET_GMP_OBJECT_FROM_OBJ(gmp_create_object(obj->ce));

 zend_objects_clone_members( &new_object->std, &old_object->std);

 mpz_set(new_object->num, old_object->num);

 return &new_object->std;
}
