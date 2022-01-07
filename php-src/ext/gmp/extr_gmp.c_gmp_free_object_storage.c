
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {int std; int num; } ;
typedef TYPE_1__ gmp_object ;


 TYPE_1__* GET_GMP_OBJECT_FROM_OBJ (int *) ;
 int mpz_clear (int ) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void gmp_free_object_storage(zend_object *obj)
{
 gmp_object *intern = GET_GMP_OBJECT_FROM_OBJ(obj);

 mpz_clear(intern->num);
 zend_object_std_dtor(&intern->std);
}
