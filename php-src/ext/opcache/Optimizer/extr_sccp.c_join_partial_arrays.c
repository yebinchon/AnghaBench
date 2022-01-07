
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FAILURE ;
 scalar_t__ IS_ARRAY ;
 int IS_PARTIAL_ARRAY (int *) ;
 int SUCCESS ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int Z_ARRVAL (int ) ;
 int Z_ARRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int empty_partial_array (int *) ;
 int join_hash_tables (int ,int ,int ) ;
 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static int join_partial_arrays(zval *a, zval *b)
{
 zval ret;

 if ((Z_TYPE_P(a) != IS_ARRAY && !IS_PARTIAL_ARRAY(a))
   || (Z_TYPE_P(b) != IS_ARRAY && !IS_PARTIAL_ARRAY(b))) {
  return FAILURE;
 }

 empty_partial_array(&ret);
 join_hash_tables(Z_ARRVAL(ret), Z_ARRVAL_P(a), Z_ARRVAL_P(b));
 zval_ptr_dtor_nogc(a);
 ZVAL_COPY_VALUE(a, &ret);

 return SUCCESS;
}
