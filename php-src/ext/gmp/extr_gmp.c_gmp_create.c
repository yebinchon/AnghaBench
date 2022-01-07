
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int mpz_ptr ;


 int ZVAL_OBJ (int *,int ) ;
 int gmp_ce ;
 int gmp_create_object_ex (int ,int *) ;

__attribute__((used)) static inline void gmp_create(zval *target, mpz_ptr *gmpnum_target)
{
 ZVAL_OBJ(target, gmp_create_object_ex(gmp_ce, gmpnum_target));
}
