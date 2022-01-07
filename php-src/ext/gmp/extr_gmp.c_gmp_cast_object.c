
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
typedef int mpz_ptr ;
struct TYPE_2__ {int num; } ;


 int FAILURE ;
 TYPE_1__* GET_GMP_OBJECT_FROM_OBJ (int *) ;



 int SUCCESS ;
 int ZVAL_DOUBLE (int *,int ) ;
 int ZVAL_LONG (int *,int ) ;

 int gmp_strval (int *,int ,int) ;
 int mpz_fits_slong_p (int ) ;
 int mpz_get_d (int ) ;
 int mpz_get_si (int ) ;

__attribute__((used)) static int gmp_cast_object(zend_object *readobj, zval *writeobj, int type)
{
 mpz_ptr gmpnum;
 switch (type) {
 case 129:
  gmpnum = GET_GMP_OBJECT_FROM_OBJ(readobj)->num;
  gmp_strval(writeobj, gmpnum, 10);
  return SUCCESS;
 case 130:
  gmpnum = GET_GMP_OBJECT_FROM_OBJ(readobj)->num;
  ZVAL_LONG(writeobj, mpz_get_si(gmpnum));
  return SUCCESS;
 case 131:
  gmpnum = GET_GMP_OBJECT_FROM_OBJ(readobj)->num;
  ZVAL_DOUBLE(writeobj, mpz_get_d(gmpnum));
  return SUCCESS;
 case 128:
  gmpnum = GET_GMP_OBJECT_FROM_OBJ(readobj)->num;
  if (mpz_fits_slong_p(gmpnum)) {
   ZVAL_LONG(writeobj, mpz_get_si(gmpnum));
  } else {
   ZVAL_DOUBLE(writeobj, mpz_get_d(gmpnum));
  }
  return SUCCESS;
 default:
  return FAILURE;
 }
}
