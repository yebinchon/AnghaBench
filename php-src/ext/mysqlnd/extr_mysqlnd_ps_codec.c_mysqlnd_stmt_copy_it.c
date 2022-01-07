
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int enum_func_status ;


 int FAIL ;
 int PASS ;
 int ZVAL_COPY (int *,int *) ;
 int * mnd_ecalloc (unsigned int,int) ;

__attribute__((used)) static enum_func_status
mysqlnd_stmt_copy_it(zval ** copies, zval * original, unsigned int param_count, unsigned int current)
{
 if (!*copies) {
  *copies = mnd_ecalloc(param_count, sizeof(zval));
 }
 if (*copies) {
  ZVAL_COPY(&(*copies)[current], original);
  return PASS;
 }
 return FAIL;
}
