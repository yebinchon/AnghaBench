
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_4__ {int zo; TYPE_3__* ptr; } ;
typedef TYPE_1__ finfo_object ;
struct TYPE_5__ {int magic; } ;


 int efree (TYPE_3__*) ;
 int magic_close (int ) ;
 TYPE_1__* php_finfo_fetch_object (int *) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void finfo_objects_free(zend_object *object)
{
 finfo_object *intern = php_finfo_fetch_object(object);

 if (intern->ptr) {
  magic_close(intern->ptr->magic);
  efree(intern->ptr);
 }

 zend_object_std_dtor(&intern->zo);
}
