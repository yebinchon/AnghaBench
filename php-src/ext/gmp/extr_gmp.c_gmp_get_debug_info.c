
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
typedef int mpz_ptr ;
struct TYPE_2__ {int num; } ;
typedef int HashTable ;


 TYPE_1__* GET_GMP_OBJECT_FROM_OBJ (int *) ;
 int gmp_strval (int *,int ,int) ;
 int * zend_array_dup (int *) ;
 int zend_hash_str_update (int *,char*,int,int *) ;
 int * zend_std_get_properties (int *) ;

__attribute__((used)) static HashTable *gmp_get_debug_info(zend_object *obj, int *is_temp)
{
 HashTable *ht, *props = zend_std_get_properties(obj);
 mpz_ptr gmpnum = GET_GMP_OBJECT_FROM_OBJ(obj)->num;
 zval zv;

 *is_temp = 1;
 ht = zend_array_dup(props);

 gmp_strval(&zv, gmpnum, 10);
 zend_hash_str_update(ht, "num", sizeof("num")-1, &zv);

 return ht;
}
