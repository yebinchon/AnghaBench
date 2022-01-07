
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_5__ {scalar_t__ iterator; } ;
struct TYPE_6__ {TYPE_1__ inner; } ;
typedef TYPE_2__ spl_dual_it_object ;


 int spl_dual_it_free (TYPE_2__*) ;
 TYPE_2__* spl_dual_it_from_obj (int *) ;
 int zend_iterator_dtor (scalar_t__) ;
 int zend_objects_destroy_object (int *) ;

__attribute__((used)) static void spl_dual_it_dtor(zend_object *_object)
{
 spl_dual_it_object *object = spl_dual_it_from_obj(_object);


 zend_objects_destroy_object(_object);

 spl_dual_it_free(object);

 if (object->inner.iterator) {
  zend_iterator_dtor(object->inner.iterator);
 }
}
