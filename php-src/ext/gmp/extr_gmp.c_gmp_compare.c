
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_FALSE ;
 int Z_LVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int gmp_cmp (int *,int *,int *) ;

__attribute__((used)) static int gmp_compare(zval *op1, zval *op2)
{
 zval result;

 gmp_cmp(&result, op1, op2);
 if (Z_TYPE(result) == IS_FALSE) {
  return 1;
 }
 return Z_LVAL(result);
}
