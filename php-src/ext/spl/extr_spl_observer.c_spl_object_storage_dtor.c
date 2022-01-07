
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int inf; int obj; } ;
typedef TYPE_1__ spl_SplObjectStorageElement ;


 TYPE_1__* Z_PTR_P (int *) ;
 int efree (TYPE_1__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_object_storage_dtor(zval *element)
{
 spl_SplObjectStorageElement *el = Z_PTR_P(element);
 zval_ptr_dtor(&el->obj);
 zval_ptr_dtor(&el->inf);
 efree(el);
}
