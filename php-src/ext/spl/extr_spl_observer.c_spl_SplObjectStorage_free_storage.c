
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int * gcdata; int storage; int std; } ;
typedef TYPE_1__ spl_SplObjectStorage ;


 int efree (int *) ;
 TYPE_1__* spl_object_storage_from_obj (int *) ;
 int zend_hash_destroy (int *) ;
 int zend_object_std_dtor (int *) ;

void spl_SplObjectStorage_free_storage(zend_object *object)
{
 spl_SplObjectStorage *intern = spl_object_storage_from_obj(object);

 zend_object_std_dtor(&intern->std);

 zend_hash_destroy(&intern->storage);

 if (intern->gcdata != ((void*)0)) {
  efree(intern->gcdata);
 }

}
