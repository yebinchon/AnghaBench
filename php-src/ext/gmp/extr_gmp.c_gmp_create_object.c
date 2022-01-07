
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int zend_class_entry ;
typedef int mpz_ptr ;


 int * gmp_create_object_ex (int *,int *) ;

__attribute__((used)) static zend_object *gmp_create_object(zend_class_entry *ce)
{
 mpz_ptr gmpnum_dummy;
 return gmp_create_object_ex(ce, &gmpnum_dummy);
}
